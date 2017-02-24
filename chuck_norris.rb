class ChuckNorris
  def initialize
    msg = gets.chomp
    converted = msg.unpack('b7'*msg.size).map{|c| c.reverse}.join('')
    tab = converted.scan(/0+|1+/)
    tab.map!{|val| val[0] == '1' ? "0 #{'0'*val.size}" : "00 #{'0'*val.size}"}
    puts tab.join(' ')
  end
end

ChuckNorris.new
