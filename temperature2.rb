class Temperature

  def initialize
    @N = gets.to_i
    @TEMPS = gets.to_s.chomp
    tab = @TEMPS.split(" ")
    if tab.count < 1
      puts 0
    else
      tab.map!{|v| v.to_i }
      minima = tab.min{|a,b | (a - 0).abs <=> (b - 0).abs}
      maxima = tab.reverse.min{|a,b | (a - 0).abs <=> (b - 0).abs}

      puts [minima, maxima].max
    end

  end

end
Temperature.new