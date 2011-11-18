require 'named_value_class'

module Peas
  class InvalidOperation < RuntimeError; end
  
  NamedValueClass PitchClass:Fixnum do
    alias _minus :-
     
    def -(rhs)
      if rhs.class == PitchClass
        if self >= rhs
          # TODO: stop the insanity
          Interval::Diatonic[
            Interval::Diatonic[self._minus(rhs)].interval_class] ||
          Interval::Semitone[
            Interval::Semitone[self._minus(rhs)].interval_class]
        else
          Interval::Diatonic[rhs - self]
        end
      elsif rhs.class == Pitch
        self - rhs.pitch_class
      elsif rhs.is_a? Interval::Base
        result = self._minus(rhs) % 12
        if is_sharp?
          PitchClass.sharps(result)
        else
          PitchClass.flats(result)
        end
      end
    end
    
    def is_sharp?
      %w|Bs Cs Ds Es Fs Gs As|.include? @name
    end
    
    def is_flat?
      %w|Bb Cb Db Eb Fb Gb Ab|.include? @name
    end
    
    def is_natural?
      %w|B C D E F G A|.include? @name
    end
    
    def self.flats(value)
      {
        0  => C,  6  => Gb, 
        1  => Db, 7  => G,  
        2  => D,  8  => Ab, 
        3  => Eb, 9  => A,  
        4  => E,  10 => Bb, 
        5  => F,  11 => B   
       }[value]
    end
    
    def self.sharps(value)
      {
       0   => C,  6  => Fs, 
        1  => Cs, 7  => G,  
        2  => D,  8  => Gs, 
        3  => Ds, 9  => A,  
        4  => E,  10 => As, 
        5  => F,  11 => B   
       }[value]
    end
    
    def as_flat
      self.class.flats(self)
    end
    
    def as_sharp
      self.class.sharps(self)
    end
  end
  
  PitchClass Bs: 0  # B sharp is just Bs
  PitchClass C:  0
  PitchClass Cs: 1
  PitchClass Db: 1
  PitchClass D:  2
  PitchClass Ds: 3
  PitchClass Eb: 3 
  PitchClass E:  4
  PitchClass Es: 5
  PitchClass Fb: 4
  PitchClass F:  5
  PitchClass Fs: 6
  PitchClass Gb: 6
  PitchClass G:  7
  PitchClass Gs: 8
  PitchClass Ab: 8
  PitchClass A:  9
  PitchClass As: 10
  PitchClass Bb: 10
  PitchClass B:  11
  PitchClass Cb: 11
end
