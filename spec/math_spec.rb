require 'helper'
require 'peas/pitch'
require 'peas/interval'

include Peas::Intervals
include Peas::Pitches    # collision on A1-A7

describe Peas do
  describe 'Pitch as LHS' do
    describe 'Pitch as RHS' do
      describe 'Pitch - Pitch' do
        it 'returns an Interval' do
          (G3 - C3).must_be_instance_of Fixnum
        end
        
        it 'reports a major second' do
          (G3 - F3).must_equal W1
          (G3 - F3).must_equal S2
          (G3 - F3).must_equal M2
          
          (F3 - G3).must_equal -W1
          (F3 - G3).must_equal -S2
          (F3 - G3).must_equal -M2
        end
      end
    end
    
    describe 'Interval as RHS' do
      describe 'Pitch + Interval' do
        it 'returns the correct Pitch' do
          (C_1 + S0 ).must_equal C_1
          (F3  + M2 ).must_equal G3
          (F3  + S14).must_equal G4
          (A2  + S12).must_equal A3
        end
        
        it 'must be reflexive' do
          (C0  + S0 ).must_equal (S0  + C0 )
          (Cs3 + M2 ).must_equal (M2  + Cs3)
          (Db3 + S14).must_equal (S14 + Db3)
          (G2  + S12).must_equal (S12 + G2 )
        end
      end
      
    end

    describe 'Integer as RHS' do
      describe 'Pitch + Integer' do
        it 'is equivalent to Pitch + Interval' do
          (A3 + 3).must_equal (A3 + S3)
        end
      end
      
      describe 'Pitch - Integer' do
        it 'is equivalent to Pitch - Interval' do
          (A3 - 3).must_equal (A3 - S3)
        end
      end
      
      describe 'Pitch * Integer' do
        it 'is equivalent to Pitch * Interval' do
          (A3 * 3).must_equal (A3 * S3)
        end
      end
      
      describe 'Pitch / Integer' do
        it 'is equivalent to Pitch / Interval' do
          (A3 / 3).must_equal (A3 / S3)
        end
      end
    end
  end
  
  describe 'PitchClass as LHS' do
    describe 'PitchClass as RHS' do
      describe 'PitchClass - PitchClass' do
        it 'reports a major second' do
          (G - F).must_equal W1
          (G - F).must_equal S2
          (G - F).must_equal M2
        end
        
        it 'reports a positive major second since it\'s an interval class' do
          skip
          (F - G).must_equal W1
          (F - G).must_equal S2
          (F - G).must_equal M2
        end
        
        it 'never reports a interval of more than 6 semitones' do
          skip
          (C - B).must_equal S1
          (G - C).must_equal S6
          (C - G).must_equal S6
        end
        
        it 'is, oddly enough, reflexive' do
          skip
          (G - C).must_equal (C - G)
          (A - G).must_equal (G - A)
          (Ds - Db).must_equal (Db - Ds)
        end
      end
    end
    
    describe 'Interval as RHS' do
      describe 'PitchClass + Interval' do
        it 'returns the correct PitchClass' do
          (C + S0 ).must_equal C
          (F + M2 ).must_equal G
          (F + S14).must_equal G
          (A + S12).must_equal A
        end
        
        it 'must be reflexive' do
          (C  + S0 ).must_equal (S0  + C )
          (Cs + M2 ).must_equal (M2  + Cs)
          (Db + S14).must_equal (S14 + Db)
          (G  + S12).must_equal (S12 + G )
        end
      end
      
      describe 'PitchClass - Interval' do
        it 'should be tested' do
          skip
        end
      end
    end

    describe 'Integer as RHS' do
      describe 'PitchClass + Integer' do
        it 'is equivalent to PitchClass + Interval' do
          (A + 3).must_equal (A + S3)
        end
      end
      
      describe 'PitchClass - Integer' do
        it 'is equivalent to PitchClass - Interval' do
          (A - 3).must_equal (A - S3)
        end
      end
      
      describe 'PitchClass * Integer' do
        it 'is equivalent to PitchClass * Interval' do
          (A * 3).must_equal (A * S3)
        end
      end
      
      describe 'PitchClass / Integer' do
        it 'is equivalent to PitchClass / Interval' do
          (A / 3).must_equal (A / S3)
        end
      end
    end
  end
  
  describe 'Interval as LHS' do
    describe 'Interval - Pitch' do
      it 'is an invalid operation' do
        skip
      end
    end
    
    describe 'Interval + Interval' do
      it 'adds semitones' do
        (M2 + M2).must_equal S4
        (P4 + W0).must_equal P4
      end
      
      it 'is reflexive' do
        (S2 + M2).must_equal (M2 + S2)
        (P4 + W0).must_equal (W0 + P4)
      end
    end
    
    describe 'octaves' do
      it 'defines P8 constant' do
        (F2 + P8).must_equal F3
        (A1 + P8).must_equal A2
        (P8 + A2).must_equal A3
        
        (Bb2 - P8).must_equal Bb1
      end
    end
    
    describe 'Interval * Integer' do
      it 'multiples semitones by Fixum' do
        (S2 * 2).must_equal S4
        (S3 * 2).must_equal S6
        (S3 * 0).must_equal S0
        (S3 * 1).must_equal S3
      end  
    end
  end
end
  
