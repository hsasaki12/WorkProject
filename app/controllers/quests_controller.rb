class QuestsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_quest, only: [:show, :edit, :update, :destroy]

  def index
    @quests = Quest.page(params[:page]).per(9)
  end

  def show
  end

  def new
    @quest = Quest.new
  end

  def edit
  end

  def create
    @quest = current_user.quests.build(quest_params)
    if @quest.save
      redirect_to @quest, notice: 'クエストを作成しました。'
    else
      render :new
    end
  end

  def update
    if @quest.update(quest_params)
      redirect_to @quest, notice: 'クエストを更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @quest = Quest.find(params[:id])
    # byebug ここで実行を一時停止
    @quest.destroy
    redirect_to quests_url, notice: 'クエストを削除しました。'
  end
  

  private
    def set_quest
      @quest = Quest.find(params[:id])
    end

    def quest_params
      params.require(:quest).permit(:title, :description, :category, :difficulty, :reward)
    end
end
