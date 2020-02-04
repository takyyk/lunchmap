class PagesController < ApplicationController
  def home
    @reports = Report.all.includes(:user)
  end
end
