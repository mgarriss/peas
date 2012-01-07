require 'spec_helper'
require 'peas/integer_helper'

describe Integer do
  # 0 semitones
  describe '#unisons' do
    it 'responds' do
      5.must_respond_to :unisons
      5.must_respond_to :unison
    end
    it 'returns an Interval with value X * 0' do
      1.unison.semitones.must_equal 0
      3.unisons.must_equal 0
      10.unisons.must_equal 0
    end
  end
  
  # 1 semitone
  describe '#semitones' do
    it 'responds' do
      5.must_respond_to :semitones
      5.must_respond_to :semitone
    end
    it 'returns an Interval with value X * 1' do
      1.semitone.must_equal 1
      3.must_equal 3
      10.must_equal 10
    end
  end
  describe '#minor_seconds' do
    it 'responds' do
      5.must_respond_to :minor_seconds
      5.must_respond_to :minor_second
    end
    it 'returns an Interval with value X * 1' do
      1.minor_second.must_equal 1
      3.minor_seconds.must_equal 3
      10.minor_seconds.must_equal 10
    end
  end
  
  # 2 semitones
  describe '#wholetones' do
    it 'responds' do
      5.must_respond_to :wholetones
      5.must_respond_to :wholetone
    end
    it 'returns an Interval with value X * 2' do
      1.wholetone.must_equal 2
      3.wholetones.must_equal 6
      10.wholetones.must_equal 20
    end
  end
  describe '#major_seconds' do
    it 'responds' do
      5.must_respond_to :major_seconds
      5.must_respond_to :major_second
    end
    it 'returns an Interval with value X * 2' do
      1.major_second.must_equal 2
      3.major_seconds.must_equal 6
      10.major_seconds.must_equal 20
    end
  end
  
  # 3 semitones
  describe '#minor_thirds' do
    it 'responds' do
      5.must_respond_to :minor_thirds
      5.must_respond_to :minor_third
    end
    it 'returns an Interval with value X * 3' do
      1.minor_third.must_equal 3
      3.minor_thirds.must_equal 9
      10.minor_thirds.must_equal 30
    end
  end

  # 4 semitones
  describe '#major_thirds' do
    it 'responds' do
      5.must_respond_to :major_thirds
      5.must_respond_to :major_third
    end
  end
  
  # 5 semitones
  describe '#perfect_fourths' do
    it 'responds' do
      5.must_respond_to :perfect_fourths
      5.must_respond_to :perfect_fourth
    end
  end
  
  # 6 semitones
  describe '#tritones' do
    it 'responds' do
      5.must_respond_to :tritones
      5.must_respond_to :tritone
    end
  end
  describe '#diminished_fifths' do
    it 'responds' do
      5.must_respond_to :diminished_fifths
      5.must_respond_to :diminished_fifth
    end
  end
  describe '#augmented_fourths' do
    it 'responds' do
      5.must_respond_to :augmented_fourths
      5.must_respond_to :augmented_fourth
    end
  end
  
  # 7 semitones
  describe '#perfect_fifths' do
    it 'responds' do
      5.must_respond_to :perfect_fifths
      5.must_respond_to :perfect_fifth
    end
  end
  
  # 8 semitones
  describe '#minor_sixths' do
    it 'responds' do
      5.must_respond_to :minor_sixths
      5.must_respond_to :minor_sixth
    end
  end
  describe '#augmented_fifths' do
    it 'responds' do
      5.must_respond_to :augmented_fifths
      5.must_respond_to :augmented_fifth
    end
  end
  
  # 9 semitones
  describe '#major_sixths' do
    it 'responds' do
      5.must_respond_to :major_sixths
      5.must_respond_to :major_sixth
    end
    it 'returns an Interval with value X * 9' do
      1.major_sixth.must_equal 9
      3.major_sixths.must_equal 27
      10.major_sixths.must_equal 90
    end
  end
  
  # 10 semitones
  describe '#minor_sevenths' do
    it 'responds' do
      5.must_respond_to :minor_sevenths
      5.must_respond_to :minor_seventh
    end
  end
  
  # 11 semitones
  describe '#major_seventh' do
    it 'responds' do
      5.must_respond_to :major_sevenths
      5.must_respond_to :major_seventh
    end
  end
  
  # 12 semitones
  describe '#octaves' do
    it 'responds' do
      5.must_respond_to :octaves
      5.must_respond_to :octave
    end
    it 'returns an Interval with value X * 12' do
      1.octave.must_equal 12
      3.octaves.must_equal 36
      10.octaves.must_equal 120
    end
  end
end

include Peas::Pitches
include Peas::Interval::NamedValues

[Ab3,G3,Ab3,C2].each do |root_pitch|
  [P1,m3,P5,P5,d5].each do |interval|
    root_pitch + interval
    root_pitch + interval + 2.octaves
    root_pitch + interval + 4.minor_sevenths
    root_pitch - 2.tritones
  end
end
