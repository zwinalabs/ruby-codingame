class MarsLand
  def initialize
    STDOUT.sync = true # DO NOT REMOVE


    $N = gets.to_i # the number of points used to draw the surface of Mars.
    $MAP = Array.new
    $N.times do
      $LAND_X, $LAND_Y = gets.split(" ").collect { |x| x.to_i }
      $MAP<< [$LAND_X, $LAND_Y]
    end

    #get_atterissage_surface

    f = $MAP.first
    x, y = f
    x1, y1 = f
    (1..($MAP.length-1)).each do |i|
      if $MAP[i][0] - x > 1000 and $MAP[i][1] == y
        x1, y1 = $MAP[i]
        break
      else
        x, y = $MAP[i]
      end
    end
    # game loop
    loop do
      # HS: the horizontal speed (in m/s), can be negative.
      # VS: the vertical speed (in m/s), can be negative.
      # F: the quantity of remaining fuel in liters.
      # R: the rotation angle in degrees (-90 to 90).
      # P: the thrust power (0 to 4).
      $X, $Y, $HS, $VS, $F, $R, $P = gets.split(" ").collect { |x| x.to_i }
      r_init =  $R


      if (x - ($X ) ) > 0
        $R -= 15 if $R >= -75

        if (x - $X) < 150  or $VS.abs >= 35
          $R += 15 if $R.abs > 30
        end


        if  $HS.abs >= 40  and $VS.abs < 45
          $R += (15 - ($R - r_init))
        end


      elsif (($X) - x1) > 0
        $R += 15 if $R <= 75
        if ($X - x1) < 150 or $VS.abs >= 15
          $R -= 15 if $R.abs > 30
        end
        if  $HS.abs >= 40  and $VS.abs < 45
          $R -= (15 - ($R - r_init) )
        end
      else

        if $HS > 19
          $R -= 25 if $R.abs > 30
        end

        #  if
        if $R.abs < 15
          $R = 0
        elsif $R > 15
          $R -= 15
        else
          $R += 15
        end
        if $VS.abs >= 35
          $P += 1 if $P < 4
        else
          if $Y - y >500
            $P > 1 ? $P -= 1 : $P = +1
          end

          if $Y - y > 50 and  $Y - y < 500
            ($P >3) ?  $P -= 1 : (($P > 1)? $P = $P : $P +=1 )
          end

          if $Y - y < 50
            $P -= 1 if $P >0
          end
        end
        if $HS > 19
          $R += 10 if $R.abs < 80
        else
          $R -= 10 if $R.abs < 80
        end
      end

      if (x - $X) > 0 or ($X - x1) > 0
        $P += 1 if $P < 4
      end

      $R += 25 if $R < -90
      $R -= 25 if $R > 90




      puts "#{$R} #{$P}"
    end

  end
end

MarsLand.new