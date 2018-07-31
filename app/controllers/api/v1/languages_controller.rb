class  Api::V1::LanguagesController < ApplicationController
  before_action :set_language, only: [:show,:update,:destroy]

  def index
    languages = Language.all
    render json: languages, status: 200
  end

  def create
    language = Language.create(language_params)
    render json: languages, status: 201
  end

  def update
    @language.update(language_params)
    render json: questions, status: 200
  end

  def destroy
    languageId = @language.id
    @language.destroy
    render json: {message:"You got deleted", languageId:languageId}
  end

  def show
    render json: @language, status: 200
  end

  private
  def language_params
    params.permit(:name, :code)
  end

  def set_language
    @language = Language.find(params[:id])
  end
end
