class Temperature

  def initialize
    @N = gets.to_i
    @TEMPS = gets.to_s.chomp
    @tmp = 0
    tab = @TEMPS.to_s.split(" ")

    if tab.count < 1
      puts @tmp
    else
      min = 100_000
      value = 100_000
      tab.each { |val|
        if (val.to_i - 0).abs < min
          value = val
          min = (val.to_i - 0).abs
        end

      }
    end
    puts min
  end

end

testina = Temperature.new