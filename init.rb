class Init
  attr_accessor :var1
  def initialize(params)
    @var1 = params
  end

  def to_do
    puts @var1
  end

end


inx = Init.new("Qays  Als")
inx.to_do