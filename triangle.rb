class Triangle
  attr_accessor :long

  def initialize(params)
   @long = params
  end

  def aff_triangle
    output = []
    (1..@long).each do |i|
      output<< '* '
      puts output.join('')
    end
  end

end

tr = Triangle.new(5)
tr.aff_triangle

