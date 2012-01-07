require 'named_value_class'
require 'peas/pitch'

module Peas
  # see: http://en.wikipedia.org/wiki/Interval_(music)
  #
  NamedValueClass Interval:Fixnum do
    multiplied_by_a 'Interval', raises:SyntaxError
    
    def inverse
      case @name
      when 'P1' then Interval::P8
      when 'm2' then Interval::M7
      when 'M2' then Interval::m7
      when 'm3' then Interval::M6
      when 'M3' then Interval::m6
      when 'P4' then Interval::P5
      when 'A4' then Interval::d5
      when 'd5' then Interval::A4
      when 'P5' then Interval::P4
      when 'm6' then Interval::M3
      when 'M6' then Interval::m3
      when 'm7' then Interval::M2
      when 'M7' then Interval::m2
      when 'P8' then Interval::P1
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
    
  25.times do |x|
    Interval "S#{x}" => x
  end
  
  13.times do |x|
    Interval "W#{x}" => x * 2
  end
  
  Interval d2: 0
  Interval A1: 1
  Interval d3: 2
  Interval A2: 3
  Interval d4: 4
  Interval A3: 5
  Interval d5: 6
  Interval A4: 6
  Interval d6: 7
  Interval A5: 8
  Interval d7: 9
  Interval A6:10
  Interval d8:11
  Interval A7:12

  Interval S: 1
  Interval T: 3
  Interval TT:6
  
  Interval P1: 0 
  Interval m2: 1 
  Interval M2: 2 
  Interval m3: 3 
  Interval M3: 4 
  Interval P4: 5 
  Interval A4: 6 
  Interval d5: 6 
  Interval P5: 7 
  Interval m6: 8 
  Interval M6: 9 
  Interval m7:10
  Interval M7:11
  Interval P8:12 
end
