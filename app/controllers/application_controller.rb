class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :do_some_time_consuming_process

  def do_some_time_consuming_process
    sleep 10
  end
end
