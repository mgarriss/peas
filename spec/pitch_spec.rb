require 'helper'
require 'peas/pitch'

include Peas::Pitch::NamedValues
include Peas::PitchClass::NamedValues

describe Peas::Pitch do
  it 'has a constant from C-1 to G9 as MIDI values' do
    C_1  .must_equal 0
    Cs_1 .must_equal 1
    Db_1 .must_equal 1
    D_1  .must_equal 2
    Eb_1 .must_equal 3 
    Ds_1 .must_equal 3 
    E_1  .must_equal 4
    Fb_1 .must_equal 4 
    F_1  .must_equal 5
    Es_1 .must_equal 5 
    Fs_1 .must_equal 6 
    Gb_1 .must_equal 6 
    G_1  .must_equal 7
    Gs_1 .must_equal 8 
    Ab_1 .must_equal 8 
    A_1  .must_equal 9
    As_1 .must_equal 10 
    Bb_1 .must_equal 10 
    B_1  .must_equal 11
    Cb0  .must_equal 11
    C0   .must_equal 12
    Bs_1 .must_equal 12 
    Cs0  .must_equal 13
    Db0  .must_equal 13
    D0   .must_equal 14
    Ds0  .must_equal 15
    Eb0  .must_equal 15
    E0   .must_equal 16
    Fb0  .must_equal 16
    F0   .must_equal 17
    Es0  .must_equal 17
    Fs0  .must_equal 18
    Gb0  .must_equal 18
    G0   .must_equal 19
    Ab0  .must_equal 20
    Gs0  .must_equal 20
    A0   .must_equal 21
    Bb0  .must_equal 22
    As0  .must_equal 22
    B0   .must_equal 23
    Cb1  .must_equal 23
    C1   .must_equal 24
    Bs0  .must_equal 24
    Db1  .must_equal 25
    Cs1  .must_equal 25
    D1   .must_equal 26
    Ds1  .must_equal 27
    Eb1  .must_equal 27
    E1   .must_equal 28
    Fb1  .must_equal 28
    F1   .must_equal 29
    Es1  .must_equal 29
    Fs1  .must_equal 30
    Gb1  .must_equal 30
    G1   .must_equal 31
    Ab1  .must_equal 32
    Gs1  .must_equal 32
    A1   .must_equal 33
    As1  .must_equal 34
    Bb1  .must_equal 34
    B1   .must_equal 35
    Cb2  .must_equal 35
    C2   .must_equal 36
    Bs1  .must_equal 36
    Db2  .must_equal 37
    Cs2  .must_equal 37
    D2   .must_equal 38
    Ds2  .must_equal 39
    Eb2  .must_equal 39
    E2   .must_equal 40
    Fb2  .must_equal 40
    F2   .must_equal 41
    Es2  .must_equal 41
    Fs2  .must_equal 42
    Gb2  .must_equal 42
    G2   .must_equal 43
    Gs2  .must_equal 44
    Ab2  .must_equal 44
    A2   .must_equal 45
    As2  .must_equal 46
    Bb2  .must_equal 46
    B2   .must_equal 47
    Cb3  .must_equal 47
    C3   .must_equal 48
    Bs2  .must_equal 48
    Cs3  .must_equal 49
    Db3  .must_equal 49
    D3   .must_equal 50
    Eb3  .must_equal 51
    Ds3  .must_equal 51
    E3   .must_equal 52
    Fb3  .must_equal 52
    F3   .must_equal 53
    Es3  .must_equal 53
    Fs3  .must_equal 54
    Gb3  .must_equal 54
    G3   .must_equal 55
    Ab3  .must_equal 56
    Gs3  .must_equal 56
    A3   .must_equal 57
    As3  .must_equal 58
    Bb3  .must_equal 58
    B3   .must_equal 59
    Cb4  .must_equal 59
    C4   .must_equal 60
    Bs3  .must_equal 60
    Cs4  .must_equal 61
    Db4  .must_equal 61
    D4   .must_equal 62
    Ds4  .must_equal 63
    Eb4  .must_equal 63
    E4   .must_equal 64
    Fb4  .must_equal 64
    F4   .must_equal 65
    Es4  .must_equal 65
    Gb4  .must_equal 66
    Fs4  .must_equal 66
    G4   .must_equal 67
    Ab4  .must_equal 68
    Gs4  .must_equal 68
    A4   .must_equal 69
    As4  .must_equal 70
    Bb4  .must_equal 70
    B4   .must_equal 71
    Cb5  .must_equal 71
    C5   .must_equal 72
    Bs4  .must_equal 72
    Cs5  .must_equal 73
    Db5  .must_equal 73
    D5   .must_equal 74
    Eb5  .must_equal 75
    Ds5  .must_equal 75
    E5   .must_equal 76
    Fb5  .must_equal 76
    F5   .must_equal 77
    Es5  .must_equal 77
    Fs5  .must_equal 78
    Gb5  .must_equal 78
    G5   .must_equal 79
    Ab5  .must_equal 80
    Gs5  .must_equal 80
    A5   .must_equal 81
    As5  .must_equal 82
    Bb5  .must_equal 82
    B5   .must_equal 83
    Cb6  .must_equal 83
    C6   .must_equal 84
    Bs5  .must_equal 84
    Cs6  .must_equal 85
    Db6  .must_equal 85
    D6   .must_equal 86
    Ds6  .must_equal 87
    Eb6  .must_equal 87
    E6   .must_equal 88
    Fb6  .must_equal 88
    F6   .must_equal 89
    Es6  .must_equal 89
    Gb6  .must_equal 90
    Fs6  .must_equal 90
    G6   .must_equal 91
    Ab6  .must_equal 92
    Gs6  .must_equal 92
    A6   .must_equal 93
    As6  .must_equal 94
    Bb6  .must_equal 94
    B6   .must_equal 95
    Cb7  .must_equal 95
    C7   .must_equal 96
    Bs6  .must_equal 96
    Cs7  .must_equal 97
    Db7  .must_equal 97
    D7   .must_equal 98
    Ds7  .must_equal 99
    Eb7  .must_equal 99
    E7   .must_equal 100
    Fb7  .must_equal 100 
    F7   .must_equal 101
    Es7  .must_equal 101 
    Gb7  .must_equal 102 
    Fs7  .must_equal 102 
    G7   .must_equal 103
    Ab7  .must_equal 104 
    Gs7  .must_equal 104 
    A7   .must_equal 105
    As7  .must_equal 106 
    Bb7  .must_equal 106 
    B7   .must_equal 107
    Cb8  .must_equal 107 
    C8   .must_equal 108
    Bs7  .must_equal 108 
    Cs8  .must_equal 109 
    Db8  .must_equal 109 
    D8   .must_equal 110
    Ds8  .must_equal 111 
    Eb8  .must_equal 111 
    E8   .must_equal 112
    Fb8  .must_equal 112 
    F8   .must_equal 113
    Es8  .must_equal 113 
    Gb8  .must_equal 114 
    Fs8  .must_equal 114 
    G8   .must_equal 115
    Ab8  .must_equal 116 
    Gs8  .must_equal 116 
    A8   .must_equal 117
    As8  .must_equal 118 
    Bb8  .must_equal 118 
    B8   .must_equal 119
    Cb9  .must_equal 119 
    C9   .must_equal 120
    Bs8  .must_equal 120 
    Cs9  .must_equal 121 
    Db9  .must_equal 121 
    D9   .must_equal 122
    Ds9  .must_equal 123 
    Eb9  .must_equal 123 
    E9   .must_equal 124
    Fb9  .must_equal 124 
    F9   .must_equal 125
    Es9  .must_equal 125 
    Gb9  .must_equal 126 
    Fs9  .must_equal 126 
    G9   .must_equal 127
  end
end

describe Peas::Pitch do
  describe '#to_s' do
    it "reports 'C3' for C3, etc.." do
      C3.to_s.must_equal 'C3'
      Cs3.to_s.must_equal 'Cs3'
      Cb3.to_s.must_equal 'Cb3'
    end
  end
  
  describe '#<=>' do
    it 'bases it\'s comparison on value' do
      F9.must_be :<, G9
      G9.must_be :>, F9
      
      (F9 <=> G9).must_equal -1
      (G9 <=> F9).must_equal  1
      (Es9 <=> F9).must_equal 0
    end
  end
  
  describe '#pitch_class' do
    it 'returns the pitch\'s correct pitch class' do
      C3.pitch_class.must_equal C
      C2.pitch_class.must_equal C
      C0.pitch_class.must_equal C
      C_1.pitch_class.must_equal C
      G3.pitch_class.must_equal G
      G2.pitch_class.must_equal G
      G0.pitch_class.must_equal G
      G_1.pitch_class.must_equal G
      Gs3.pitch_class.must_equal Gs
      Gs2.pitch_class.must_equal Gs
      Gs0.pitch_class.must_equal Gs
      Gs_1.pitch_class.must_equal Gs
    end
  end

  describe '#as_flat' do
    it 'returns self for a pitch that is already flat' do
      Ab2.as_flat.to_s.must_equal 'Ab2' 
      Bb2.as_flat.to_s.must_equal 'Bb2' 
      Db2.as_flat.to_s.must_equal 'Db2' 
      Eb2.as_flat.to_s.must_equal 'Eb2' 
      Gb2.as_flat.to_s.must_equal 'Gb2' 
    end
    
    it 'returns self for pitch that is natural' do
      A4.as_flat.to_s.must_equal 'A4' 
      B4.as_flat.to_s.must_equal 'B4' 
      C4.as_flat.to_s.must_equal 'C4' 
      D4.as_flat.to_s.must_equal 'D4' 
      E4.as_flat.to_s.must_equal 'E4' 
      F4.as_flat.to_s.must_equal 'F4' 
      G4.as_flat.to_s.must_equal 'G4' 
    end
    
    it 'returns flat version of sharp pitch' do
      As1.as_flat.to_s.must_equal 'Bb1' 
      Bs1.as_flat.to_s.must_equal 'C1' 
      Cs1.as_flat.to_s.must_equal 'Db1' 
      Ds1.as_flat.to_s.must_equal 'Eb1' 
      Es1.as_flat.to_s.must_equal 'F1' 
      Fs1.as_flat.to_s.must_equal 'Gb1' 
      Gs1.as_flat.to_s.must_equal 'Ab1' 
    end
  end
  
  describe '#as_sharp' do
    it 'returns self for a pitch that is already sharp' do
      As2.as_sharp.to_s.must_equal 'As2' 
      Cs2.as_sharp.to_s.must_equal 'Cs2' 
      Ds2.as_sharp.to_s.must_equal 'Ds2' 
      Fs2.as_sharp.to_s.must_equal 'Fs2' 
      Gs2.as_sharp.to_s.must_equal 'Gs2' 
    end
    
    it 'returns self for pitch that is natural' do
      A4.as_sharp.to_s.must_equal 'A4' 
      B4.as_sharp.to_s.must_equal 'B4' 
      C4.as_sharp.to_s.must_equal 'C4' 
      D4.as_sharp.to_s.must_equal 'D4' 
      E4.as_sharp.to_s.must_equal 'E4' 
      F4.as_sharp.to_s.must_equal 'F4' 
      G4.as_sharp.to_s.must_equal 'G4' 
    end
    
    it 'returns sharp version of flat pitch' do
      Ab2.as_sharp.to_s.must_equal 'Gs2' 
      Bb2.as_sharp.to_s.must_equal 'As2' 
      Cb2.as_sharp.to_s.must_equal 'B2'  # really? who does this?
      Db2.as_sharp.to_s.must_equal 'Cs2' 
      Eb2.as_sharp.to_s.must_equal 'Ds2' 
      Fb2.as_sharp.to_s.must_equal 'E2' 
      Gb2.as_sharp.to_s.must_equal 'Fs2' 
    end
  end
end
