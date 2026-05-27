# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess(min, max)
    average = (min + max)/2.0
    rounded_average = average.floor
    return rounded_average
  end

  def game_over?
    guess == answer ? true : false
  end

  def update_range
    min = @min
    max = @max
    if guess < answer
      return guess + 1, max
    elsif guess > answer
      return min, guess - 1
    end
  end
end
