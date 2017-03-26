class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end
  def create
    @todo = Todo.new(todo_params)
      @todo.save
  end

  def update
    @todo.update(todo_params)
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:text, :isCompleted)
    end
end
