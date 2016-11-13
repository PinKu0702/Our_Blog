class HelloController < ApplicationController
  def index
    @name = params[:name1]
  end
end
