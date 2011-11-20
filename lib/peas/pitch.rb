require 'forwardable'
require 'peas/pitch_class'

module Peas
  NamedValueClass Pitch:Fixnum do
    minus_a 'Interval::Base' do |lhs,minus,rhs|
      is_sharp? ? PitchClass.sharps[result] : PitchClass.flats[result]
    end
    
    def as_flat
      self.class.flats[self]
    end
    
    def as_sharp
      self.class.sharps[self]
    end
  end
  
  PitchClass::NamedValues::Collection.each do |pclass|
    Pitch "#{pclass}_1" => pclass, pitch_class:pclass, octave:-1,
     sharp:pclass.is_sharp?, flat:pclass.is_flat?, natural:pclass.is_natural?
    0.upto(9) do |octave|
      name = pclass.to_s + octave.to_s
      Pitch name => (((octave+1)*12)+pclass), pitch_class:pclass, octave:octave,
       sharp:pclass.is_sharp?, flat:pclass.is_flat?, natural:pclass.is_natural?
    end
  end
  
  module Pitches
    include Pitch::NamedValues
    include PitchClass::NamedValues
  end
end
