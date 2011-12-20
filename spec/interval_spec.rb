require 'spec_helper'
require 'peas/interval'

include Peas::Intervals

describe Peas::Interval do
  describe 'wholetones' do
    it 'sets W0 to 0' do
      W0.must_equal 0
    end
    
    it 'sets W1 to 2' do
      W1.must_equal 2
    end
    
    it 'sets W6 to 12' do
      W6.must_equal 12
    end
    
    it 'has constants set upto 2 octaves' do
      W12.must_equal 24
    end
    
    it 'is equal to 2 x Semitones' do
      W0.must_equal S0
      W1.must_equal S2
      W2.must_equal S4
      W3.must_equal S6
      W4.must_equal S8
      W5.must_equal S10
      W6.must_equal S12
      W7.must_equal S14
      W8.must_equal S16
      W9.must_equal S18
      W10.must_equal S20
      W11.must_equal S22
      W12.must_equal S24
    end
  end
  
  describe '#<=>' do
    describe 'Interval <=> Interval' do
      it 'is equivalent to Interval <=> Integer' do
        (S4 <=> S3).must_equal (S4 <=> 3)
        (S4 <=> S4).must_equal (S4 <=> 4)
        (S4 <=> S5).must_equal (S4 <=> 5)
      end
    end
  end
  
  describe 'semitones' do
    it 'sets constants upto S24' do
      S0.must_equal 0
      S1.must_equal 1
      S2.must_equal 2
      S3.must_equal 3
      S4.must_equal 4
      S5.must_equal 5
      S6.must_equal 6
      S7.must_equal 7
      S8.must_equal 8
      S9.must_equal 9
      S10.must_equal 10
      S11.must_equal 11
      S12.must_equal 12
      S13.must_equal 13
      S14.must_equal 14
      S15.must_equal 15
      S16.must_equal 16
      S17.must_equal 17
      S18.must_equal 18
      S19.must_equal 19
      S20.must_equal 20
      S21.must_equal 21
      S22.must_equal 22
      S23.must_equal 23
      S24.must_equal 24
    end
  end

  describe '#inverse' do
    it 'P1 is inverse of P8' do
      P1.inverse.must_equal P8
      P8.inverse.must_equal P1
    end
    it 'm2 is inverse of M7' do
      m2.inverse.must_equal M7
      M7.inverse.must_equal m2
    end
    it 'M2 is inverse of m7' do
      M2.inverse.must_equal m7
      m7.inverse.must_equal M2
    end
    it 'm3 is inverse of M6' do
      m3.inverse.must_equal M6
      M6.inverse.must_equal m3
    end
    it 'M3 is inverse of m6' do
      M3.inverse.must_equal m6
      m6.inverse.must_equal M3
    end
    it 'P4 is inverse of P5' do
      P5.inverse.must_equal P4
      P4.inverse.must_equal P5
    end
  end
  
  describe '#interval_class' do
    it 'reports 5 for P5' do
      P5.interval_class.must_equal 5
    end
    it 'reports 5 for P4' do
      P4.interval_class.must_equal 5
    end
    it 'reports 2 for M2' do
      M2.interval_class.must_equal 2
    end
    it 'reports 3 for m3' do
      m3.interval_class.must_equal 3
    end
  end
end

__END__

  describe 'diatonic' do
    it 'should be tested' do
      skip
    end
  end
  
  describe '#just_interval' do
    it 'reports 4/3 for P4' do
      skip
      P4.just_interval.must_equal Rational(4,3)
    end
    
    it 'reports 3/2 for P5' do
      skip
      P5.just_interval.must_equal Rational(3,2)
    end
    
    it 'should test other #just_interval results' do
      skip
    end
  end
  
  describe '#equal_temperament_cents' do
    it 'reports 700 for P5' do
      skip
      P5.equal_temperament_cents.must_equal 700
    end
    
    it 'reports 500 for P4' do
      skip
      P5.equal_temperament_cents.must_equal 700
    end
    
    it 'should test other #equal_temperament_cents results' do
      skip
    end
  end
  
  describe '#quarter_tone_cents' do
    it 'reports 700 for P5' do
      skip
      P5.quarter_tone_cents.must_equal 700
    end
    
    it 'reports 500 for P4' do
      skip
      P4.quarter_tone_cents.must_equal 500
    end
    
    it 'should test other #quarter_tone_cents results' do
      skip
    end
  end
  
  describe '#just_intonation_cents' do
    it 'reports 702 for P5' do
      skip
      P5.just_intonation_cents.must_equal 702
    end
    
    it 'reports 498 for P4' do
      skip
      P4.just_intonation_cents.must_equal 498
    end
    
    it 'should test other #just_intonation_cents results' do
      skip
    end
  end
  
