class ActivityController < ApplicationController
  def index
    @new_greeting = params[:message] == 'hi' ? 'bye' : 'hi'
  end

  def stream_greeting
    @new_greeting = params[:message] == 'hi' ? 'bye' : 'hi'
  end
end