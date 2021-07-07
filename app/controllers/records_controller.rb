class RecordsController < ApplicationController

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to record_path(@record)
  end

  private
  params.require(:record).permit(:subject_name, :test_score, :academic_results)
end
