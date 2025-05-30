class CalculatorController < ApplicationController
  def index
  end

  def add
    input = params[:input].to_s
    @result = StringCalculatorService.add(input)
    render :index
  rescue => e
    @error = e.message
    render :index
  end
end
