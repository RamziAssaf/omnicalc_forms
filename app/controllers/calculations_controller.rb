class CalculationsController < ApplicationController
  
  def word_count_form
  	render("word_count_form.html.erb")
  end

  def word_count
    @word_count = @text.split.count
    render("word_count.html.erb")
  end
  
  def loan_payment_form
  	render("loan_payment_form.html.erb")
  end

  def loan_payment
	@apr = params[:apr].to_f
    @years = params[:years].to_f
    @principal = params[:principal].to_f
    @monthly_payment= "Placeholder"
  end

end
