class CalculatorsController < ApplicationController
  def square
    render({:template => "calculator_templates/square"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({:template => "calculator_templates/square_results"})
    
  end

  def square_root

    render({:template => "calculator_templates/square_root"})
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 0.5
    render({:template => "calculator_templates/square_root_results"})
  end

  def payment
    render({:template => "calculator_templates/payment"})
  end

  def payment_results
    @apr_number = params.fetch("users_apr_number").to_f
    @years_number = params.fetch("users_years_number").to_i
    @principal_number = params.fetch("users_principal_number").to_f

    rate_per_period = (@apr_number/100)/12
    number_of_periods = @years_number * 12

    numerator = rate_per_period * @principal_number
    denominator= 1 - ((1 + rate_per_period)**-number_of_periods)

    @monthly_payment = (numerator/denominator).to_fs(:currency)

    render({:template => "calculator_templates/payment_results"})
  end

  def random
    render({:template => "calculator_templates/random"})
  end

  def random_results
    @min_number = params.fetch("users_min_number").to_f
    @max_number = params.fetch("users_max_number").to_f

    @random_number = rand(@min_number..@max_number)

    render({:template => "calculator_templates/random_results"})
  end
end
