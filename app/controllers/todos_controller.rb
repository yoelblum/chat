class TodosController < ApplicationController

  def index
    render json: Todo.all
  end

  def show
    render json: Todo.find(params[:id])
  end

  def create
    Todo.create!({text: params[:todo]})
    render text: "OK"
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes!(todo_params)
    render text: "OK"
  end

  private

  def todo_params
    # It's mandatory to specify the nested attributes that should be whitelisted.
    # If you use `permit` with just the key that points to the nested attributes hash,
    # it will return an empty hash.
    params.require(:todo).permit(:text)
  end

end