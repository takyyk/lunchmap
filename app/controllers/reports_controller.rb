class ReportsController < ApplicationController
  def index
    @reports = Report.all.includes(:user)
  end

  def new
    @report = Report.new
  end

  def create
    @report = current_user.reports.create(report_params)
    if @report.save
      redirect_to reports_path, success: 'ランチの記録作成が完了しました'
    else
      flash.now[:danger] = 'ランチの記録作成に失敗しました。'
      render :new
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:title, :body)
  end
end
