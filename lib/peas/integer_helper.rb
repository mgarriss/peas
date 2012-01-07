require 'peas/interval'

class Integer
  def unisons
    Peas::Interval::P1
  end
  alias unison unisons
  
  def semitones
    Peas::Interval "S#{self}" => self
  end
  alias semitone semitones
  
  def minor_seconds
    Peas::Interval "m2x#{self}" => self
  end
  alias minor_second minor_seconds
  
  def wholetones
    Peas::Interval "W#{self}" => self * 2
  end
  alias wholetone wholetones
  
  def major_seconds
    Peas::Interval "M2x#{self}" => self * 2
  end
  alias major_second major_seconds
  
  def minor_thirds
    Peas::Interval "m3x#{self}" => self * 3
  end
  alias minor_third minor_thirds
  
  def major_thirds
    Peas::Interval "M3x#{self}" => self * 4
  end
  alias major_third major_thirds
  
  def perfect_fourths
    Peas::Interval "P4x#{self}" => self * 5
  end
  alias perfect_fourth perfect_fourths
  
  def tritones
    # Peas::Interval::Latin "TTx#{self}" => self * 6
    self * 6
  end
  alias tritone tritones
  
  def diminished_fifths
    Peas::Interval "d5x#{self}" => self * 6
  end
  alias diminished_fifth diminished_fifths
  
  def augmented_fourths
    Peas::Interval "S6x#{self}" => self * 6
  end
  alias augmented_fourth augmented_fourths
  
  def perfect_fifths
    Peas::Interval "P5x#{self}" => self * 7
  end
  alias perfect_fifth perfect_fifths
  
  def minor_sixths
    Peas::Interval "m6x#{self}" => self * 8
  end
  alias minor_sixth minor_sixths
  
  def augmented_fifths
    Peas::Interval "S8x#{self}" => self * 8
  end
  alias augmented_fifth augmented_fifths
  
  def major_sixths
    Peas::Interval "M6x#{self}" => self * 9
  end
  alias major_sixth major_sixths
  
  def minor_sevenths
    Peas::Interval "m7x#{self}" => self * 10
  end
  alias minor_seventh minor_sevenths
  
  def major_sevenths
    Peas::Interval "M7x#{self}" => self * 11
  end
  alias major_seventh major_sevenths
  
  def octaves
    Peas::Interval "P8x#{self}" => self * 12
  end
  alias octave octaves
end


