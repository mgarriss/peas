require 'named_value_class'

module Peas
  NamedValueClass PitchClass:Fixnum, constrain:0..11 do
    minus_a 'Interval::Base' do |lhs,minus,rhs|
      result = minus(rhs) % 12
      is_sharp? ? PitchClass.sharps(result) : PitchClass.flats(result)
    end
    
    def as_flat
      self.class.naturals[self] || self.class.flats[self]
    end
    
    def as_sharp
      self.class.naturals[self] || self.class.sharps[self]
    end
  end
  
  PitchClass Bs:  0,   sharp:true  
  PitchClass C:   0, natural:true 
  PitchClass Cs:  1,   sharp:true 
  PitchClass Db:  1,    flat:true 
  PitchClass D:   2, natural:true 
  PitchClass Ds:  3,   sharp:true 
  PitchClass Eb:  3,    flat:true 
  PitchClass E:   4, natural:true 
  PitchClass Es:  5,   sharp:true 
  PitchClass Fb:  4,    flat:true 
  PitchClass F:   5, natural:true 
  PitchClass Fs:  6,   sharp:true 
  PitchClass Gb:  6,    flat:true 
  PitchClass G:   7, natural:true 
  PitchClass Gs:  8,   sharp:true 
  PitchClass Ab:  8,    flat:true 
  PitchClass A:   9, natural:true 
  PitchClass As: 10,   sharp:true 
  PitchClass Bb: 10,    flat:true 
  PitchClass B:  11, natural:true 
  PitchClass Cb: 11,    flat:true 
end
