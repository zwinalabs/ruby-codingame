class Chevaux2
  def initialize

    nbr_cv =  gets.to_i
    tab_puiss =  Array.new

    nbr_cv.times do
      tab_puiss << gets.to_i
    end

    tab_puiss.sort!
    first = tab_puiss.first
    min = (tab_puiss[1] - first).abs

    (1..(tab_puiss.size-1)).each do |index|
      if (tab_puiss[index] - tab_puiss[index-1]).abs < min
        min = (tab_puiss[index] - tab_puiss[index-1]).abs
      end
    end
    puts min
  end
end

Chevaux2.new
