require 'helper'
require 'peas/pitch_class'

include Peas::PitchClass::NamedValues

describe Peas::PitchClass do
  describe 'constants' do
    it 'has a constant from A to G' do
      A.class.must_equal  Peas::PitchClass
      Ab.class.must_equal Peas::PitchClass
      As.class.must_equal Peas::PitchClass
      B.class.must_equal  Peas::PitchClass
      Bb.class.must_equal Peas::PitchClass
      Bs.class.must_equal Peas::PitchClass
      C.class.must_equal  Peas::PitchClass
      Cb.class.must_equal Peas::PitchClass
      Cs.class.must_equal Peas::PitchClass
      D.class.must_equal  Peas::PitchClass
      Db.class.must_equal Peas::PitchClass
      Ds.class.must_equal Peas::PitchClass
      E.class.must_equal  Peas::PitchClass
      Eb.class.must_equal Peas::PitchClass
      Es.class.must_equal Peas::PitchClass
      F.class.must_equal  Peas::PitchClass
      Fb.class.must_equal Peas::PitchClass
      Fs.class.must_equal Peas::PitchClass
      G.class.must_equal  Peas::PitchClass
      Gb.class.must_equal Peas::PitchClass
      Gs.class.must_equal Peas::PitchClass
      
      C.must_equal Bs
      B.must_equal Cb
      F.must_equal Es
      E.must_equal Fb
    end
    
    describe '#to_s' do
      it "reports 'C' for C, etc.." do
        C.to_s.must_equal 'C'
        Cs.to_s.must_equal 'Cs'
        Cb.to_s.must_equal 'Cb'
      end
    end
  end
    
  describe '#as_flat' do
    it 'returns self for a pitch that is already flat' do
      Ab.as_flat.to_s.must_equal 'Ab' 
      Bb.as_flat.to_s.must_equal 'Bb' 
      Db.as_flat.to_s.must_equal 'Db' 
      Eb.as_flat.to_s.must_equal 'Eb' 
      Gb.as_flat.to_s.must_equal 'Gb' 
    end
    
    it 'returns self for pitch that is natural' do
      A.as_flat.to_s.must_equal 'A' 
      B.as_flat.to_s.must_equal 'B' 
      C.as_flat.to_s.must_equal 'C' 
      D.as_flat.to_s.must_equal 'D' 
      E.as_flat.to_s.must_equal 'E' 
      F.as_flat.to_s.must_equal 'F' 
      G.as_flat.to_s.must_equal 'G' 
    end
    
    it 'returns flat version of sharp pitch' do
      As.as_flat.to_s.must_equal 'Bb' 
      Bs.as_flat.to_s.must_equal 'C' 
      Cs.as_flat.to_s.must_equal 'Db' 
      Ds.as_flat.to_s.must_equal 'Eb' 
      Es.as_flat.to_s.must_equal 'F' 
      Fs.as_flat.to_s.must_equal 'Gb' 
      Gs.as_flat.to_s.must_equal 'Ab' 
    end
  end
  
  describe '#as_sharp' do
    it 'returns self for a pitch that is already sharp' do
      As.as_sharp.to_s.must_equal 'As' 
      Cs.as_sharp.to_s.must_equal 'Cs' 
      Ds.as_sharp.to_s.must_equal 'Ds' 
      Fs.as_sharp.to_s.must_equal 'Fs' 
      Gs.as_sharp.to_s.must_equal 'Gs' 
    end
    
    it 'returns self for pitch that is natural' do
      A.as_sharp.to_s.must_equal 'A' 
      B.as_sharp.to_s.must_equal 'B' 
      C.as_sharp.to_s.must_equal 'C' 
      D.as_sharp.to_s.must_equal 'D' 
      E.as_sharp.to_s.must_equal 'E' 
      F.as_sharp.to_s.must_equal 'F' 
      G.as_sharp.to_s.must_equal 'G' 
    end
    
    it 'returns sharp version of flat pitch' do
      Ab.as_sharp.to_s.must_equal 'Gs' 
      Bb.as_sharp.to_s.must_equal 'As' 
      Cb.as_sharp.to_s.must_equal 'B' 
      Db.as_sharp.to_s.must_equal 'Cs' 
      Eb.as_sharp.to_s.must_equal 'Ds' 
      Fb.as_sharp.to_s.must_equal 'E' 
      Gb.as_sharp.to_s.must_equal 'Fs' 
    end
  end
end
