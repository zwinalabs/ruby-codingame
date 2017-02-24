class MimeType
  def initialize
    @N = gets.to_i # Number of elements which make up the association table.
    @Q = gets.to_i # Number Q of file names to be analyzed.
    hash = Hash.new("UNKNOWN")
    @N.times do
      tab = gets.split(" ")
      hash[tab.first.downcase] = tab.last
    end
    @Q.times do
      @FNAME = gets.chomp# One file name per line.
      sp = "#{@FNAME} ".split('.')
      puts (sp.count >1 ?  hash[sp.last.downcase.strip] : hash[nil])
    end
  end
end

MimeType.new