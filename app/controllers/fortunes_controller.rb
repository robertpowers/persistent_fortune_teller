class FortunesController < ApplicationController
  def lucky
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky
    @numbers = [rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000), rand(100...1000)]
  end
  def random
    # params {"num1"}
    min = params["num1"].to_i
    mincopy = params["num1"].to_i
    max = params["num2"].to_i

    if min > max
      min = max
      max = mincopy
    end

    @numbers2 = params["num1"]
    @numbers3 = params["num2"]
    @color = params["color"]

    def random_int(min, max)
      rand(max - min) + min
    end

    @generated = random_int(min,max)

  end
end
