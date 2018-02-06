class Api::CatsController < ApplicationController
  def index
    @cats = Cat.all
    render json: @cats, status: :ok
  end

  def show
    @cat = Cat.find(params[:id])
    if @cat.present?
      render json: @cat, status: :ok
    else
      render json: @cat.errors, status: :not_found
    end
  end
end
