module.exports = {
  name: "result",
  description: "command",
  async run(msg, args, historyDb, cmdTimeout) {
    let message;
    let recorded = false;

    // check whether the user is winning against themselves or a bot
    if (msg.mentions.users.first()?.id === msg.author.id || msg.mentions.users.first()?.bot) return

    try {
      message = await msg.channel.send(`<@${msg.mentions.users.first().id}> react with 🇾 if this is true`);
      await message.react("🇾");
    } catch (error) { return } // if the second argument is not a mention return

    const filter = (reaction, user) => {
      return reaction.emoji.name === "🇾"
        && user.id === msg.mentions.users.first().id
        && !user.bot                  // !win @bot
        && user.id != msg.author.id   // !win @messageAuthor
        && !recorded                  // result has already been recorded
    };

    let collector = message.createReactionCollector({ filter, time: 10000 });
    collector.on("collect", async (reaction) => {
      if (reaction.emoji.name === "🇾") {
        recorded = true;

        // check if either of the users have recorded resutls in the last 20 seconds
        if (
          cmdTimeout.has(`${msg.author.id} ${this.name}`)
          || cmdTimeout.has(`${msg.mentions.users.first().id} ${this.name}`)
        ) {
          msg.channel.send("wait before sending results again")
        } else {
          cmdTimeout.add(`${msg.author.id} ${this.name}`)
          cmdTimeout.add(`${msg.mentions.users.first().id} ${this.name}`)
          setTimeout(() => {
            cmdTimeout.delete(`${msg.author.id} ${this.name}`)
            cmdTimeout.delete(`${msg.mentions.users.first().id} ${this.name}`)
          }, 10000); // restict them from using the command
        }

        // record results
        if (args[0] == "win") { // author beat mentioned user
          await message.edit(`Results recorded: <@${msg.author.id}> beat <@${msg.mentions.users.first().id}>`);
          historyDb.insert({ winner: msg.author.id, looser: msg.mentions.users.first().id, time: Date.now() });
        } else { // mentioned user beat author
          await message.edit(`Results recorded: <@${msg.mentions.users.first().id}> beat <@${msg.author.id}>`);
          historyDb.insert({ winner: msg.mentions.users.first().id, looser: msg.author.id, time: Date.now() })
        }
      }
    })
  }
}
