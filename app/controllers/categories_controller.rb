class CategoriesController < ApplicationController
  before_filter :reuse_params
  before_filter :get_category
  before_filter :get_categories, :only => [:admin]
  
  def show
  end
  
  def index
  end
  
  private
  
  def reuse_params
    @question   = Question.find(params[:question_id]) if params[:question_id]
    @answer     = Answer.find(params[:answer_id])     if params[:answer_id] 
    @category   = Category.find(params[:category_id]) if params[:category_id]
  end
  
  def get_category
    if @category
      offset    = rand(@category.questions.count)
      @question = @category.questions.first(:offset => offset)
    elsif @question
      @category = Category.find(@question.category_id)
    else
      # Später find by url title
      # Starten mit random kategorie/frage
      offset    = rand(Category.count)
      @category = Category.first(:offset => offset)
      
      offset    = rand(@category.questions.count)
      @question = @category.questions.first(:offset => offset)
    end
  end
  
  def get_categories
    @categories = Category.all
  end
end
