# What is wrong with the following code?
# What fix(es) would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# Private methods can NOT be called with an explicit received, even if that
# received is self.
