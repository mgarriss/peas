require 'forwardable'
require 'peas/pitch_class'

module Peas
  NamedValueClass 'Pitch', Fixnum do
    extend Forwardable
    def_delegators :pitch_class, :is_sharp?, :is_flat?, :is_natural?
    
    def as_flat
      self.class.flats(self)
    end
    
    def as_sharp
      self.class.sharps(self)
    end
    
    def self.flats(value)
      {
        0   => C_1  , 32  => Ab1  , 64  => E4   , 96  => C7   , 
        1   => Db_1 , 33  => A1   , 65  => F4   , 97  => Db7  , 
        2   => D_1  , 34  => Bb1  , 66  => Gb4  , 98  => D7   , 
        3   => Eb_1 , 35  => B1   , 67  => G4   , 99  => Eb7  , 
        4   => E_1  , 36  => C2   , 68  => Ab4  , 100 => E7   , 
        5   => F_1  , 37  => Db2  , 69  => A4   , 101 => F7   , 
        6   => Gb_1 , 38  => D2   , 70  => Bb4  , 102 => Gb7  , 
        7   => G_1  , 39  => Eb2  , 71  => B4   , 103 => G7   , 
        8   => Ab_1 , 40  => E2   , 72  => C5   , 104 => Ab7  , 
        9   => A_1  , 41  => F2   , 73  => Db5  , 105 => A7   , 
        10  => Bb_1 , 42  => Gb2  , 74  => D5   , 106 => Bb7  , 
        11  => B_1  , 43  => G2   , 75  => Eb5  , 107 => B7   , 
        12  => C0   , 44  => Ab2  , 76  => E5   , 108 => C8   , 
        13  => Db0  , 45  => A2   , 77  => F5   , 109 => Db8  , 
        14  => D0   , 46  => Bb2  , 78  => Gb5  , 110 => D8   , 
        15  => Eb0  , 47  => B2   , 79  => G5   , 111 => Eb8  , 
        16  => E0   , 48  => C3   , 80  => Ab5  , 112 => E8   , 
        17  => F0   , 49  => Db3  , 81  => A5   , 113 => F8   , 
        18  => Gb0  , 50  => D3   , 82  => Bb5  , 114 => Gb8  , 
        19  => G0   , 51  => Eb3  , 83  => B5   , 115 => G8   , 
        20  => Ab0  , 52  => E3   , 84  => C6   , 116 => Ab8  , 
        21  => A0   , 53  => F3   , 85  => Db6  , 117 => A8   , 
        22  => Bb0  , 54  => Gb3  , 86  => D6   , 118 => Bb8  , 
        23  => B0   , 55  => G3   , 87  => Eb6  , 119 => B8   , 
        24  => C1   , 56  => Ab3  , 88  => E6   , 120 => C9   , 
        25  => Db1  , 57  => A3   , 89  => F6   , 121 => Db9  ,           
        26  => D1   , 58  => Bb3  , 90  => Gb6  , 122 => D9   , 
        27  => Eb1  , 59  => B3   , 91  => G6   , 123 => Eb9  , 
        28  => E1   , 60  => C4   , 92  => Ab6  , 124 => E9   , 
        29  => F1   , 61  => Db4  , 93  => A6   , 125 => F9   , 
        30  => Gb1  , 62  => D4   , 94  => Bb6  , 126 => Gb9  , 
        31  => G1   , 63  => Eb4  , 95  => B6   , 127 => G9     
      }[value]
    end
  
    def self.sharps(value)
      {
        0   => C_1  , 32  => Gs1  , 64  => E4   , 96  => C7   , 
        1   => Cs_1 , 33  => A1   , 65  => F4   , 97  => Cs7  , 
        2   => D_1  , 34  => As1  , 66  => Fs4  , 98  => D7   , 
        3   => Ds_1 , 35  => B1   , 67  => G4   , 99  => Ds7  , 
        4   => E_1  , 36  => C2   , 68  => Gs4  , 100 => E7   , 
        5   => F_1  , 37  => Cs2  , 69  => A4   , 101 => F7   , 
        6   => Fs_1 , 38  => D2   , 70  => As4  , 102 => Fs7  , 
        7   => G_1  , 39  => Ds2  , 71  => B4   , 103 => G7   , 
        8   => Gs_1 , 40  => E2   , 72  => C5   , 104 => Gs7  , 
        9   => A_1  , 41  => F2   , 73  => Cs5  , 105 => A7   , 
        10  => As_1 , 42  => Fs2  , 74  => D5   , 106 => As7  , 
        11  => B_1  , 43  => G2   , 75  => Ds5  , 107 => B7   , 
        12  => C0   , 44  => Gs2  , 76  => E5   , 108 => C8   , 
        13  => Cs0  , 45  => A2   , 77  => F5   , 109 => Cs8  , 
        14  => D0   , 46  => As2  , 78  => Fs5  , 110 => D8   , 
        15  => Ds0  , 47  => B2   , 79  => G5   , 111 => Ds8  , 
        16  => E0   , 48  => C3   , 80  => Gs5  , 112 => E8   , 
        17  => F0   , 49  => Cs3  , 81  => A5   , 113 => F8   , 
        18  => Fs0  , 50  => D3   , 82  => As5  , 114 => Fs8  , 
        19  => G0   , 51  => Ds3  , 83  => B5   , 115 => G8   , 
        20  => Gs0  , 52  => E3   , 84  => C6   , 116 => Gs8  , 
        21  => A0   , 53  => F3   , 85  => Cs6  , 117 => A8   , 
        22  => As0  , 54  => Fs3  , 86  => D6   , 118 => As8  , 
        23  => B0   , 55  => G3   , 87  => Ds6  , 119 => B8   , 
        24  => C1   , 56  => Gs3  , 88  => E6   , 120 => C9   , 
        25  => Cs1  , 57  => A3   , 89  => F6   , 121 => Cs9  , 
        26  => D1   , 58  => As3  , 90  => Fs6  , 122 => D9   , 
        27  => Ds1  , 59  => B3   , 91  => G6   , 123 => Ds9  , 
        28  => E1   , 60  => C4   , 92  => Gs6  , 124 => E9   , 
        29  => F1   , 61  => Cs4  , 93  => A6   , 125 => F9   , 
        30  => Fs1  , 62  => D4   , 94  => As6  , 126 => Fs9  , 
        31  => G1   , 63  => Ds4  , 95  => B6   , 127 => G9     
      }[value]
    end
  end
  PitchClass::NamedValues::Collection.each do |pclass|
    Pitch "#{pclass}_1", pclass, pitch_class:pclass, octave:-1
    0.upto(9) do |octave|
      name = pclass.to_s + octave.to_s
      Pitch name, (((octave+1)*12)+pclass), pitch_class:pclass, octave:octave
    end
  end
  
  module Pitches
    include Pitch::NamedValues
    include PitchClass::NamedValues
  end
end

