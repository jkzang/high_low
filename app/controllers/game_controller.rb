class GameController < ApplicationController
  def try

    if cookies[:counter] == nil
      cookies[:counter]=0
    end

    if cookies[:secret_num] == nil
      cookies[:secret_num]=rand(1..100)
    end

    @userguess=params[:userguess].to_i
    @secret_num=cookies[:secret_num].to_i

    case

    when @userguess>@secret_num
      @result="you guessed too high"

      cookies[:counter] = cookies[:counter].to_i + 1
      @counter = cookies[:counter]

    when @userguess<@secret_num
      @result="you guessed too low"

      cookies[:counter] = cookies[:counter].to_i + 1
      @counter = cookies[:counter]

    when @userguess==@secret_num
      @result="you win! the number was #{@secret_num}"
      cookies[:secret_num]=rand(1..100)
      @secret_num=cookies[:secret_num]
    end

  end

  def reset
    cookies[:counter] = 0
    @counter = cookies[:counter]

    params[]
    redirect_to '/game/try'
  end

end
