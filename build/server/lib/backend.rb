require './lib/model/phrase'

module Backend
  include Model

  PHRASES = [
    {
      positive: [
        Phrase.new(1, "vibrant communities"),
        Phrase.new(2, "food efficiency"),
        Phrase.new(3, "space tours"),
        Phrase.new(4, "diversity"),
        Phrase.new(5, "new professions"),
        Phrase.new(6, "personalised medicines"),
        Phrase.new(7, "ambulance drones"),
        Phrase.new(309, "kA lol", 17),
      ],
      negative: [
        Phrase.new(1, "destroyed nature"),
        Phrase.new(2, "living underground"),
        Phrase.new(3, "control of machines"),
        Phrase.new(4, "poverty"),
        Phrase.new(5, "reduced brain-function"),
        Phrase.new(6, "war"),
        Phrase.new(7, "omnipotent technology"),
        Phrase.new(1040, "aweadfjhgafwjeg", 9),
        Phrase.new(1042, "lol kann mer des sehen???", 31),
      ]
    },
    {
      positive: [
        Phrase.new(1, "vibrant communities"),
        Phrase.new(2, "food efficiency"),
        Phrase.new(3, "space tours"),
        Phrase.new(4, "diversity"),
        Phrase.new(5, "new professions"),
        Phrase.new(6, "personalised medicines"),
        Phrase.new(7, "ambulance drones"),
        Phrase.new(309, "kA lol", 17),
      ],
      negative: [
        Phrase.new(1, "destroyed nature"),
        Phrase.new(2, "living underground"),
        Phrase.new(3, "control of machines"),
        Phrase.new(4, "poverty"),
        Phrase.new(5, "reduced brain-function"),
        Phrase.new(6, "war"),
        Phrase.new(7, "omnipotent technology"),
        Phrase.new(1040, "aweadfjhgafwjeg", 9),
        Phrase.new(1042, "lol kann mer des sehen???", 31),
      ]
    },
    {
      positive: [
        Phrase.new(1, "vibrant communities"),
        Phrase.new(2, "food efficiency"),
        Phrase.new(3, "space tours"),
        Phrase.new(4, "diversity"),
        Phrase.new(5, "new professions"),
        Phrase.new(6, "personalised medicines"),
        Phrase.new(7, "ambulance drones"),
        Phrase.new(309, "kA lol", 7),
        Phrase.new(1047, "your food sucks", 26),
        Phrase.new(1048, "I ❤ Darmstadt lol", 29),
        Phrase.new(1049, "dude what this", 29),
      ],
      negative: [
        Phrase.new(1, "destroyed nature"),
        Phrase.new(2, "living underground"),
        Phrase.new(3, "control of machines"),
        Phrase.new(4, "poverty"),
        Phrase.new(5, "reduced brain-function"),
        Phrase.new(6, "war"),
        Phrase.new(7, "omnipotent technology"),
        Phrase.new(1042, "lol kann mer des sehen???", 21),
        Phrase.new(1050, "thx for coming to my ted talk lol", 29),
        Phrase.new(1051, "<script>alert('hi')</script>", 30),
      ]
    },
    {
      positive: [
        Phrase.new(1, "vibrant communities"),
        Phrase.new(2, "food efficiency"),
        Phrase.new(3, "space tours"),
        Phrase.new(4, "diversity"),
        Phrase.new(5, "new professions"),
        Phrase.new(6, "personalised medicines"),
        Phrase.new(7, "ambulance drones"),
        Phrase.new(1047, "your food sucks", 16),
        Phrase.new(1048, "I ❤ Darmstadt lol", 18),
        Phrase.new(1049, "dude what this", 18),
      ],
      negative: [
        Phrase.new(1, "destroyed nature"),
        Phrase.new(2, "living underground"),
        Phrase.new(3, "control of machines"),
        Phrase.new(4, "poverty"),
        Phrase.new(5, "reduced brain-function"),
        Phrase.new(6, "war"),
        Phrase.new(7, "omnipotent technology"),
        Phrase.new(1042, "lol kann mer des sehen???", 11),
        Phrase.new(1050, "thx for coming to my ted talk lol", 19),
        Phrase.new(1051, "<script>alert('hi')</script>", 20),
        Phrase.new(1057, "lolololololoolooololol", 30),
      ]
    },
  ]
end
