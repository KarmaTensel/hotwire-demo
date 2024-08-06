class ActivityController < ApplicationController
  def index
    @new_greeting = params[:message] == 'hi' ? 'bye' : 'hi'
    @current_stepper = params[:stepper] || 'testimonial'
  end

  def stream_greeting
    @new_greeting = params[:message] == 'hi' ? 'bye' : 'hi'
  end

  def buy_now
    respond_to do |format|
      format.html do
        render partial: 'activity/buy_now', layout: false
      end
    end
  end
end