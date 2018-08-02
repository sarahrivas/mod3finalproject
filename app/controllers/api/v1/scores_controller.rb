class Api::V1::ScoresController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]

  def index
    scores = Score.all
    render json: scores, status: 200
  end

  def create
    score = Score.create(user_params)
    render json: scores, status: 201
  end

  def update
    @score.update(score_params)
    render json: scores, status: 200
  end

  def destroy
    scoreId = @score.id
    @score.destroy
    render json: {message:"You got deleted", scoreId:scoreId}
  end

  def show
    render json: @score, status: 200
  end

  private
  def score_params
    params.permit(:name, :lives, :user_id)
  end

  def set_user
    @score = Score.find(params[:id])
  end
end
