class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to question_path(@question)
    else
      @answers = @question.answers
      render 'questions/show'
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:content, :user_name).merge(question_id: params[:question_id])
  end
end
