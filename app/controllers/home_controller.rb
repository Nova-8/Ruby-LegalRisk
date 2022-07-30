class HomeController < ApplicationController
  
  def index
    if params.has_key?(:query)
      @query = params[:query]
      unless @query.nil?
        @res = EvenChecker.is_even?(@query)
      end
    end

  end

end
