SET @game = 'AoCF';
SET @character = 'Byakuren Hijiri';

INSERT INTO `moves` (
	`game`, `character`, `lables`, `data`
) VALUES
	(@game, @character, '5a,a,4a,c5a,f5a', JSON_COMPACT('{ "variations": [
		{
			"title": "close 5a",
			"startup": "7f",
			"active": "2f",
			"recovery": "13f",
			"damage": 200,
			"stun": 0
		},
		{
			"title": "far 5a",
			"startup": "11f",
			"active": "2f",
			"recovery": "20f",
			"damage": 500,
			"stun": 0
		}
	]}')),
	(@game, @character, '6a', JSON_COMPACT('{ "variations": [
		{
			"title": "6a",
			"startup": "12f",
			"active": "11f",
			"recovery": "27f",
			"damage": 825,
			"stun": 40
		}
	]}')),
	(@game, @character, '8a', JSON_COMPACT('{ "variations": [
		{
			"title": "8a",
			"startup": "11f",
			"active": "3f",
			"recovery": "45f",
			"damage": 750,
			"stun": 40
		}
	]}')),
	(@game, @character, '2a', JSON_COMPACT('{ "variations": [
		{
			"title": "2a",
			"startup": "15f",
			"active": "3f",
			"recovery": "29f",
			"damage": 750,
			"stun": 40
		}
	]}')),
	(@game, @character, 'ja,j5a', JSON_COMPACT('{ "variations": [
		{
			"title": "j5a",
			"startup": "13f",
			"active": "9f",
			"recovery": "18f",
			"damage": 500,
			"stun": 0
		}
	]}')),
	(@game, @character, 'j6a', JSON_COMPACT('{ "variations": [
		{
			"title": "j6a",
			"startup": "12f",
			"active": "7f",
			"recovery": "29f",
			"damage": 750,
			"stun": 40
		}
	]}')),
	(@game, @character, 'j8a', JSON_COMPACT('{ "variations": [
		{
			"title": "top lane j8a",
			"startup": "12f",
			"active": "5f",
			"recovery": "37f",
			"damage": 750,
			"stun": 40
		},
		{
			"title": "bottom lane j8a",
			"startup": "15f",
			"active": "5f",
			"recovery": "59f",
			"damage": 750,
			"stun": 40
		}
	]}')),
	(@game, @character, 'j2a', JSON_COMPACT('{ "variations": [
		{
			"title": "top lane j2a",
			"startup": "21f",
			"active": "4f",
			"recovery": "38f",
			"damage": "250 > 962",
			"stun": 40
		},
		{
			"title": "bottom lane j2a",
			"startup": "15f",
			"active": "3f",
			"recovery": "38f",
			"damage": "750",
			"stun": 40
		}
	]}')),
	(@game, @character, '5b,b', JSON_COMPACT('{ "variations": [
		{
			"title": "5b",
			"startup": "15f",
			"damage": "250 | 448 | 638",
			"stun": "10 per (max 30)"
		}
	]}')),
	(@game, @character, '2b', JSON_COMPACT('{ "variations": [
		{
			"title": "2b",
			"damage": "251 | 448 | 638",
			"stun": "11 per (max 30)"
		}
	]}')),
	(@game, @character, '8b', JSON_COMPACT('{ "variations": [
		{
			"title": "8b",
			"damage": "252 | 448 | 638",
			"stun": "12 per (max 30)"
		}
	]}')),
	(@game, @character, '6b', JSON_COMPACT('{ "variations": [
		{
			"title": "6b",
			"damage": "816",
			"stun": "40"
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
			"damage": "62 per",
			"stun": 0
		}
	]}')),
	(@game, @character, 'chant', JSON_COMPACT('{ "variations": [
		{
			"title": "chant",
			"damage": "N/A",
			"stun": "N/A"
		}
	]}')),
	(@game, @character, '5c,c', JSON_COMPACT('{ "variations": [
		{
			"title": "5c",
			"damage": "500 > 950 > 1613",
			"stun": "40 > 40 > 40"
		}
	]}')),
	(@game, @character, 'j5c,jc', JSON_COMPACT('{ "variations": [
		{
			"title": "j5c",
			"damage": "1000",
			"stun": "40"
		}
	]}')),
	(@game, @character, '6c', JSON_COMPACT('{ "variations": [
		{
			"title": "6c",
			"startup": "18f",
			"active": "8f",
			"recovery": "34f + 6f if the move connects",
			"damage": "281 - 1437",
			"stun": "20 - 30"
		}
	]}')),
	(@game, @character, '4c', JSON_COMPACT('{ "variations": [
		{
			"title": "4c",
			"damage": "1875",
			"stun": 100
		}
	]}')),
	(@game, @character, 'j4c', JSON_COMPACT('{ "variations": [
		{
			"title": "j4c",
			"damage": "500 - 1283",
			"stun": 60
		}
	]}')),
	(@game, @character, '2c', JSON_COMPACT('{ "variations": [
		{
			"title": "2c",
			"damage": "1250",
			"stun": "40"
		}
	]}')),
	(@game, @character, '8c', JSON_COMPACT('{ "variations": [
		{
			"title": "8c",
			"damage": "250",
			"stun": 40
		}
	]}')),
	(@game, @character, 'da,dasha,66a', JSON_COMPACT('{ "variations": [
		{
			"title": "dash a",
			"startup": "15f",
			"active": "20f",
			"recovery": "14f",
			"damage": "671 (if all hit)",
			"stun": 0
		}
	]}')),
	(@game, @character, 'db,dashb,66b', JSON_COMPACT('{ "variations": [
		{
			"title": "dash b",
			"startup": "31f",
			"active": "8f",
			"recovery": "27f",
			"damage": "825"
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
			"damage": "3068",
			"cost": 1000
		},
		{
			"title": "spellcard 2",
			"damage": "3597",
			"cost": 800
		},
		{
			"title": "spellcard 3",
			"damage": "3921",
			"cost": 1200
		}
	]}')),
	(@game, @character, 'lw,lastword', JSON_COMPACT('{ "variations": [
		{
			"title": "lastword",
			"damage": 5060,
			"stun": 100
		}
	]}'));

