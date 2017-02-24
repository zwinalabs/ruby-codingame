class Chevaux
  def initialize

    @N_CV =  gets.to_i
    @PI_CV = @C_TAB = Array.new
    @proche_piu = nil

    @N_CV.times do
      @PI_CV << gets.to_i

    end
    @PI_CV.sort
    #
    #
    # #
    min_num = @PI_CV[0] - @PI_CV[1]
    @PI_CV.shift(2)
    @PI_CV.each_index do |i|
    #  @C_TAB << @proche_piu
      @C_TAB <<  @PI_CV[i] - @PI_CV[i-1] if (i-1) > 0
      @proche_piu = @C_TAB.min
    end
    puts @proche_piu
  end


end

testina = Chevaux.new