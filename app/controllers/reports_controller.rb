class ReportsController < ApplicationController
  skip_before_action :require_login
  before_action :set_report, only: %i[edit update destroy]

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

  def edit; end

  def update
    if @report.update(report_params)
      redirect_to report_path, success: '更新しました'
    else
      flash.now[:danger] = '更新できませんでした'
      render :edit
    end
  end

  def destroy
    @report.destroy!
    redirect_to reports_path, success: '削除しました'
  end

  private

  def set_report
    @report = current_user.reports.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:title, :body, :report_image)
  end
end
