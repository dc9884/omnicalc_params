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
    @number_of_years = params[:number_of_years].to_f
    @present_value = params[:present_value].to_f
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


end
