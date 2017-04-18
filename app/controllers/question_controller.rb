class QuestionController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.title = params[:quesiton][:title]
    @quesiton.body = params[:quesiton][:body]

    if @quesiton.save
      flash[:notice] = "quesitons was saved."
      redirect_to @quesiton
    else
      flash.now[:alert] = "There was an error saving the quesiton. Please try again."
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end
end
