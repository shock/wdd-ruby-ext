
module MinMaxComparison
  # Returns the greater of the object's value or +value+
  def max( value )
    if value > self
      value
    else
      self
    end
  end
  
  # Returns the lesser of the object's value or +value+
  def min( value )
    if value < self
      value
    else
      self
    end
  end
end

class Fixnum
  include MinMaxComparison
end

class Rational
  include MinMaxComparison
end

class Float
  include MinMaxComparison

  def precision(pre)
    mult = 10 ** pre
    (self * mult).truncate.to_f / mult
  end
end

