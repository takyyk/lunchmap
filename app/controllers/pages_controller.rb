class PagesController < ApplicationController
  skip_before_action :require_login

  def home
    @reports = Report.all.includes(:user)
  end
end
