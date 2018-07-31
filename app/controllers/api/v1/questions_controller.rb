class  Api::V1::QuestionsController < ApplicationController
  before_action :set_question, only: [:show,:update,:destroy]

  def index
    questions = Question.all
    render json: questions, status: 200
  end

  def create
    question = Question.create(question_params)
    render json: questions, status: 201
  end

  def update
    @question.update(question_params)
    render json: questions, status: 200
  end

  def destroy
    questionId = @question.id
    @question.destroy
    render json: {message:"You got deleted", questionId:questionId}
  end

  def show
    render json: @question, status: 200
  end

  private
  def question_params
    params.permit(:content, :language_id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
