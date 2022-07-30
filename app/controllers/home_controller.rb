class HomeController < ApplicationController
  
  def index
    if params.has_key?(:query)
      @num = Integer(params[:query]) rescue nil
      unless @num.nil?
        @res = EvenChecker.is_even?(@num)
      end
    end

  end

end
