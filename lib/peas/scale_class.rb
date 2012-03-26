require 'named_value_class'

module Peas
  NamedValueClass ScaleClass:Fixnum, constrain:0..11 do
    def tonal
      root()
    end
  end

  ScaleClass Ionian:1,     root:PitchClass::C,  scale_category:ScaleCategory::Major
  ScaleClass Dorian:2,     root:PitchClass::D,  scale_category:ScaleCategory::minor
  ScaleClass Phrygian:3,   root:PitchClass::E,  scale_category:ScaleCategory::minor
  ScaleClass Lydian:4,     root:PitchClass::F,  scale_category:ScaleCategory::Major
  ScaleClass Mixolydian:5, root:PitchClass::G,  scale_category:ScaleCategory::Major
  ScaleClass Aeolian:6,    root:PitchClass::A,  scale_category:ScaleCategory::minor
  ScaleClass Locrian:7,   root:PitchClass::B,  scale_category:ScaleCategory::diminished
end
