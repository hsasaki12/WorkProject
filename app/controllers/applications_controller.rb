class ApplicationsController < ApplicationController
  def new
    @quest = Quest.find(params[:quest_id])
    @application = ::Application.new(quest_id: params[:quest_id])
  end

def create
  @application = current_user.applications.build(application_params)
  if @application.save
    redirect_to quests_path, notice: '応募が完了しました'
  else
    render :new
  end
end

  private

  def application_params
    params.require(:application).permit(:message, :quest_id)
  end
end