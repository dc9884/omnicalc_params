class CalculationsController < ApplicationController
  def flexible_square

    @the_number = params[:num].to_f
    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root

    @the_number = params[:num].to_f
    render("calculations/flexible_square_root.html.erb")
  end

  def monthly_payment

    @basis_points = params[:basis_points].to_f
    @number_of_years = params[:number_of_years].to_i
    @present_value = params[:present_value].to_f

    @number_of_periods = @number_of_years * 12
    @monthly_rate_dec = (@basis_points / 100 / 100 / 12)
    @rate_display = @basis_points / 100
    @monthly_payment = (@monthly_rate_dec * @present_value) / (1-((1+@monthly_rate_dec)**(@number_of_periods*-1)))

    render("calculations/monthly_payment.html.erb")
  end

  def random

    @min = params[:min].to_i
    @max = params[:max].to_i

    @random = rand(@min..@max)

    render("calculations/random.html.erb")
  end

  def square_form

    render("calculations/square_form.html.erb")
  end

  def square_results

    @user_number = params[:user_number].to_f

    @squared_number = @user_number ** 2

    render("calculations/square_results.html.erb")
  end

  def square_root_form

    render("calculations/square_root_form.html.erb")
  end

  def square_root_results

    @user_number = params[:user_number].to_f

    @square_root_number = @user_number ** 0.5

    render("calculations/square_root_results.html.erb")
  end

  def payment_form

    render("calculations/payment_form.html.erb")
  end

  def payment_results

    @apr = params[:apr].to_f
    @number_of_years = params[:years].to_i
    @present_value = params[:pv].to_f

    @number_of_periods = @number_of_years * 12
    @monthly_rate_dec = (@apr / 100 / 12)
    @monthly_payment = (@monthly_rate_dec * @present_value) / (1-((1+@monthly_rate_dec)**(@number_of_periods*-1)))

    render("calculations/payment_results.html.erb")
  end

  def random_form

    render("calculations/random_form.html.erb")
  end

  def random_results

    @min = params[:min].to_f
    @max = params[:max].to_f

    @random = rand(@min..@max)

    render("calculations/random_results.html.erb")
  end

end
