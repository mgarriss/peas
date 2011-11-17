require 'named_value_class'
require 'peas/pitch'

module Peas
  module Interval
    # see: http://en.wikipedia.org/wiki/Interval_(music)
    module Math
      def -(rhs)
        if [Pitch,PitchClass].include?(rhs.class)
          raise Peas::InvalidOperation, '(Interval - Pitch) has no meaning'
        else
          super
        end
      end
    end

    NamedValueClass 'Semitone', Fixnum do
      include Peas::Interval::Math
    end
    128.times do |x|
      Semitone "S#{x}", x
    end
    
    NamedValueClass 'Wholetone', Fixnum  do
      include Peas::Interval::Math
    end
    64.times do |x|
      Wholetone "W#{x}", x * 2
    end
    
    NamedValueClass 'Chromatic', Fixnum do
      include Peas::Interval::Math
    end
    Chromatic :d2, 0
    Chromatic :A1, 1
    Chromatic :d3, 2
    Chromatic :A2, 3
    Chromatic :d4, 4
    Chromatic :A3, 5
    Chromatic :d5, 6
    Chromatic :A4, 6
    Chromatic :d6, 7
    Chromatic :A5, 8
    Chromatic :d7, 9
    Chromatic :A6, 10
    Chromatic :d8, 11
    Chromatic :A7, 12

    NamedValueClass 'Latin', Fixnum do
      include Peas::Interval::Math
    end
    Latin 'S',  1
    Latin 'T',  3
    Latin 'TT', 6
    
    NamedValueClass 'Diatonic',  Fixnum do
      include Peas::Interval::Math
      def inverse
        case @name
        when 'P1' then Diatonic::P8
        when 'm2' then Diatonic::M7
        when 'M2' then Diatonic::m7
        when 'm3' then Diatonic::M6
        when 'M3' then Diatonic::m6
        when 'P4' then Diatonic::P5
        when 'A4' then Diatonic::d5
        when 'd5' then Diatonic::A4
        when 'P5' then Diatonic::P4
        when 'm6' then Diatonic::M3
        when 'M6' then Diatonic::m3
        when 'm7' then Diatonic::M2
        when 'M7' then Diatonic::m2
        when 'P8' then Diatonic::P1
        end
      end
      
      def interval_class
        if (mod_12 = self % 12) > 6
          12 - mod_12
        else
          mod_12
        end
      end
    end
    Diatonic 'P1',  0 
    Diatonic 'm2',  1 
    Diatonic 'M2',  2 
    Diatonic 'm3',  3 
    Diatonic 'M3',  4 
    Diatonic 'P4',  5 
    Diatonic 'A4',  6 
    Diatonic 'd5',  6 
    Diatonic 'P5',  7 
    Diatonic 'm6',  8 
    Diatonic 'M6',  9 
    Diatonic 'm7', 10
    Diatonic 'M7', 11
    Diatonic 'P8', 12 
  end
  
  module Intervals
    include Interval::Semitone::NamedValues
    extend  Interval::Semitone::NamedValues

    include Interval::Wholetone::NamedValues
    extend  Interval::Wholetone::NamedValues

    include Interval::Chromatic::NamedValues
    extend  Interval::Chromatic::NamedValues

    include Interval::Latin::NamedValues
    extend  Interval::Latin::NamedValues

    include Interval::Diatonic::NamedValues
    extend  Interval::Diatonic::NamedValues
  end
  
  def self.is_an_interval?(obj)
    [Interval::Semitone,
     Interval::Wholetone,
     Interval::Chromatic,
     Interval::Latin,
     Interval::Diatonic].include? obj.class
  end
end
