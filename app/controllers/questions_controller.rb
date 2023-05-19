class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to action: :index
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  private
  def question_params
    params.require(:question).permit(:title, :content, :user_name)
  end
end
