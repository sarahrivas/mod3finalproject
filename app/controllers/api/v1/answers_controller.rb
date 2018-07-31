class  Api::V1::AnswersController < ApplicationController
  before_action :set_answer, only: [:show,:update,:destroy]

  def index
    answers = Answer.all
    render json: answers, status: 200
  end

  def create
    answer = Answer.create(answer_params)
    render json: answers, status: 201
  end

  def update
    @answer.update(answer_params)
    render json: answers, status: 200
  end

  def destroy
    answerId = @answer.id
    @answer.destroy
    render json: {message:"You got deleted", answerId:answerId}
  end

  def show
    render json: @answer, status: 200
  end

  private
  def answer_params
    params.permit(:content, :question_id)
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end
end
