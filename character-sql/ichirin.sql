SET @game = 'AoCF';
SET @character = 'Ichirin Kumoi';

INSERT INTO `moves` (
	`game`, `character`, `lables`, `data`
) VALUES
	(@game, @character, '5a,a,4a,c5a,f5a', JSON_COMPACT('{ "variations": [
		{
			"title": "close 5a",
			"startup": "9f",
			"active": "3f",
			"recovery": "9f",
			"damage": 200,
			"stun": 0
		},
		{
			"title": "far 5a",
			"startup": "10f",
			"active": "5f",
			"recovery": "22f",
			"damage": "562 or 500",
			"stun": 0
		}
	]}')),
	(@game, @character, '6a', JSON_COMPACT('{ "variations": [
		{
			"title": "6a",
			"startup": "22f",
			"active": "3f",
			"recovery": "28f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, '8a', JSON_COMPACT('{ "variations": [
		{
			"title": "8a",
			"startup": "18f",
			"active": "4f",
			"recovery": "32f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, '2a', JSON_COMPACT('{ "variations": [
		{
			"title": "2a",
			"startup": "18f",
			"active": "3f",
			"recovery": "30f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, 'ja,j5a', JSON_COMPACT('{ "variations": [
		{
			"title": "j5a",
			"startup": "11f",
			"active": "3f",
			"recovery": "35f",
			"damage": "562 or 500",
			"stun": 0
		}
	]}')),
	(@game, @character, 'j6a', JSON_COMPACT('{ "variations": [
		{
			"title": "j6a",
			"startup": "18f",
			"active": "3f",
			"recovery": "28f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, 'j8a', JSON_COMPACT('{ "variations": [
		{
			"title": "j8a",
			"startup": "15f",
			"active": "4f",
			"recovery": "42f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, 'j2a', JSON_COMPACT('{ "variations": [
		{
			"title": "j2a",
			"startup": "18f",
			"active": "3f",
			"recovery": "44f",
			"damage": "812 or 750",
			"stun": 40
		}
	]}')),
	(@game, @character, '5b,b', JSON_COMPACT('{ "variations": [
		{
			"title": "5b",
			"damage": "628 (if all hit)",
			"stun": 44
		}
	]}')),
	(@game, @character, '2b', JSON_COMPACT('{ "variations": [
		{
			"title": "2b",
			"damage": "628 (if all hit)",
			"stun": 44
		}
	]}')),
	(@game, @character, '8b', JSON_COMPACT('{ "variations": [
		{
			"title": "8b",
			"damage": "628 (if all hit)",
			"stun": 44
		}
	]}')),
	(@game, @character, '6b', JSON_COMPACT('{ "variations": [
		{
			"title": "6b",
			"damage": "250 > 435",
			"stun": "10 > 30"
		}
	]}')),
	(@game, @character, 'cb,chargeb,[b]', JSON_COMPACT('{ "variations": [
		{
			"title": "charge b",
			"damage": "1000",
			"stun": 40
		}
	]}')),
	(@game, @character, 'bbb,tenkai', JSON_COMPACT('{ "variations": [
		{
			"title": "tenkai",
			"damage": "50",
			"stun": 0
		}
	]}')),
	(@game, @character, '5c,c', JSON_COMPACT('{ "variations": [
		{
			"title": "5c",
			"damage": "1546 (if all hit)",
			"stun": "42"
		}
	]}')),
	(@game, @character, '6c', JSON_COMPACT('{ "variations": [
		{
			"title": "6c",
			"startup": "min 25f max:32f",
			"active": "6f",
			"recovery": "51f",
			"damage": "1500",
			"stun": "100"
		}
	]}')),
	(@game, @character, '4c', JSON_COMPACT('{ "variations": [
		{
			"title": "4c",
			"damage": "1320 (if all hit)",
			"stun": 32
		}
	]}')),
	(@game, @character, '2c', JSON_COMPACT('{ "variations": [
		{
			"title": "2c",
			"damage": "1250",
			"stun": "30"
		}
	]}')),
	(@game, @character, '8c', JSON_COMPACT('{ "variations": [
		{
			"title": "8c",
			"startup": "24f",
			"active": "3f",
			"recovery": "19f",
			"damage": "1875",
			"stun": 40
		},
		{
			"title": "high 8c",
			"damage": "819",
			"stun": 40
		}
	]}')),
	(@game, @character, 'da,dasha,66a', JSON_COMPACT('{ "variations": [
		{
			"title": "dash a",
			"startup": "13f",
			"active": "3f",
			"recovery": "23f",
			"damage": "1000 or 750",
			"stun": 0
		}
	]}')),
	(@game, @character, 'db,dashb,66b', JSON_COMPACT('{ "variations": [
		{
			"title": "dash b",
			"startup": "17f",
			"active": "3f",
			"recovery": "34f",
			"damage": "1250 or 875",
			"stun": 40
		}
	]}')),
	(@game, @character, 'ab,occult', JSON_COMPACT('{ "variations": [
		{
			"title": "occult"
		}
	]}')),
	(@game, @character, 'tag,taga,tagja,tagb,ta,tja,tb', JSON_COMPACT('{ "variations": [
		{
			"title": "tag a"
		},
		{
			"title": "tag ja"
		},
		{
			"title": "tag b"
		}
	]}')),
	(@game, @character, 'sc,spellcard', JSON_COMPACT('{ "variations": [
		{
			"title": "spellcard 1",
			"damage": "3903 (if all hit)",
			"stun": 100,
			"cost": 1300
		},
		{
			"title": "spellcard 2",
			"damage": "2716 (if all hit)",
			"stun": "100 (on last hit)",
			"cost": 800
		},
		{
			"title": "spellcard 3",
			"damage": "3915",
			"stun": 100,
			"cost": 1200
		}
	]}')),
	(@game, @character, 'lw,lastword', JSON_COMPACT('{ "variations": [
		{
			"title": "lastword",
			"damage": 5167,
			"stun": 100
		}
	]}'));

