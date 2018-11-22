require './lib/model/phrase'

module Backend
  include Model

  PHRASES = {
    positive: [
      Phrase.new(1, "vibrant communities"),
      Phrase.new(2, "food efficiency"),
      Phrase.new(3, "space tours"),
      Phrase.new(4, "diversity"),
      Phrase.new(5, "new professions"),
      Phrase.new(6, "personalised medicines"),
      Phrase.new(7, "ambulance drones"),
      Phrase.new(309, "kA lol", 17)
    ],
    negative: [
      Phrase.new(1, "destroyed nature"),
      Phrase.new(2, "living underground"),
      Phrase.new(3, "control of machines"),
      Phrase.new(4, "poverty"),
      Phrase.new(5, "reduced brain-function"),
      Phrase.new(6, "war"),
      Phrase.new(7, "omnipotent technology"),
      Phrase.new(1040, "aweadfjhgafwjeg"),
      Phrase.new(1042, "lol kann mer des sehen???")
    ]
  }
end
