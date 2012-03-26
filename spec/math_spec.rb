require 'spec_helper'
require 'peas/pitch'
require 'peas/interval'

include Peas::Interval::NamedValues
include Peas::Pitches    # collision on A1-A7

describe 'Pitch - PitchClass' do
  it 'should return interval from rhs to lhs' do
    (G2 - C).must_equal S7
  end
end

describe 'Pitch + Interval' do
  it 'returns a new Pitch' do
    (D2 + m2).must_equal Ds2
  end
end

describe 'Pitch - Interval' do
  it 'returns a new Pitch' do
    (D2 - m2).must_equal Cs2
  end
end

describe 'PitchClass + Interval' do
  it 'returns a new PitchClass' do
    (D + m2).must_equal Ds
  end
end

describe 'PitchClass - Interval' do
  it 'returns a new PitchClass' do
    (D - m2).must_equal Cs
  end
end

describe 'Interval + Pitch' do
  it 'is equivalent to Pitch + Interval' do
    (P4 + D2).must_equal(D2 + P4)
  end
end

describe 'Interval - Pitch' do
  it 'is equivalent to Pitch - Interval' do
    (P4 - D2).must_equal(D2 - P4)
  end
end

describe 'Interval + PitchClass' do
  it 'is equivalent to Pitch + Interval' do
    (P4 + D).must_equal(D + P4)
  end
end

describe 'Interval - PitchClass' do
  it 'is equivalent to Pitch - Interval' do
    (P4 - D).must_equal(D - P4)
  end
end

describe 'Interval + Interval' do
  it 'returns a new Interval' do
    (S3 + S4).must_equal S7
  end
end

describe 'Interval - Interval' do
  it 'returns a new Interval' do
    (S4 - S3).must_equal S1
  end
end

__END__

describe 'Interval * Interval' do
  it 'raises SyntaxError' do
    proc{m2 * M2}.must_raise SyntaxError
  end
end

describe 'Interval / Interval' do
  it 'raises SyntaxError' do
    proc{m2 / M2}.must_raise SyntaxError
  end
end
describe 'Pitch + Pitch' do
  it 'raise SyntaxError' do
    proc{G2 + C2}.must_raise SyntaxError
  end
end

describe 'Pitch - Pitch' do
  it 'raise SyntaxError' do
    proc{G2 - C2}.must_raise SyntaxError
  end
end

describe 'Pitch * Pitch' do
  it 'raise SyntaxError' do
    proc{G2 * C2}.must_raise SyntaxError
  end
end

describe 'Pitch / Pitch' do
  it 'raise SyntaxError' do
    proc{G2 / C2}.must_raise SyntaxError
  end
end

describe 'Pitch + PitchClass' do
  it 'raises SyntaxError' do
    proc{G2 + C}.must_raise SyntaxError
  end
end

describe 'Pitch * PitchClass' do
  it 'raises SyntaxError' do
    proc{G2 * C}.must_raise SyntaxError
  end
end

describe 'Pitch / PitchClass' do
  it 'raises SyntaxError' do
    proc{G2 / B}.must_raise SyntaxError
  end
end


describe 'Pitch * Interval' do
  it 'raises SyntaxError' do
    proc{G2 * M3}.must_raise SyntaxError
  end
end

describe 'Pitch / Interval' do
  it 'raises SyntaxError' do
    proc{G2 / M3}.must_raise SyntaxError
  end
end

# ====================

describe 'PitchClass + Pitch' do
  it 'raises SyntaxError' do
    proc{G2 + M3}.must_raise SyntaxError
  end
end

describe 'PitchClass - Pitch' do
  it 'raise SyntaxError' do
    proc{G2 - M3}.must_raise SyntaxError
  end
end

describe 'PitchClass * Pitch' do
  it 'raises SyntaxError' do
    proc{G2 * M3}.must_raise SyntaxError
  end
end

describe 'PitchClass / Pitch' do
  it 'raises SyntaxError' do
    proc{G2 / M3}.must_raise SyntaxError
  end
end

# -----------

describe 'PitchClass + PitchClass' do
  it 'raises SyntaxError' do
    proc{G + C}.must_raise SyntaxError
  end
end

describe 'PitchClass - PitchClass' do
  it 'raises SyntaxError' do
    proc{G - C}.must_raise SyntaxError
  end
end

describe 'PitchClass * PitchClass' do
  it 'raises SyntaxError' do
    proc{G * C}.must_raise SyntaxError
  end
end

describe 'PitchClass / PitchClass' do
  it 'raises SyntaxError' do
    proc{G / B}.must_raise SyntaxError
  end
end

# -----------

describe 'PitchClass * Interval' do
  it 'raises SyntaxError' do
    proc{G * m2}.must_raise SyntaxError
  end
end

describe 'PitchClass / Interval' do
  it 'raises SyntaxError' do
    proc{G / P4}.must_raise SyntaxError
  end
end

# ====================

describe 'Interval * Pitch' do
  it 'raises SyntaxError' do
    proc{m2 * G3}.must_raise SyntaxError
  end
end

describe 'Interval / Pitch' do
  it 'raises SyntaxError' do
    proc{m2 / G3}.must_raise SyntaxError
  end
end


describe 'Interval * PitchClass' do
  it 'raises SyntaxError' do
    proc{m2 * G}.must_raise SyntaxError
  end
end

describe 'Interval / PitchClass' do
  it 'raises SyntaxError' do
    proc{m2 / G}.must_raise SyntaxError
  end
end

# -----------
