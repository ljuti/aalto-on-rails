class TodosController < ApplicationController
  respond_to :html

  def index
    respond_with @todos = Todo.open
  end

  def all
    respond_with @todos = Todo.all, template: "todos/index"
  end

  def create
    @todo = Todo.new(params[:todo])
    @todo.save
    respond_with @todo, location: todos_path
  end

  def show
    respond_with @todo = Todo.find(params[:id])
  end

  def edit
    respond_with @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params[:todo])
    respond_with @todo
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo = Todo.find(params[:id])
    @todo.complete!
    respond_with @todo, location: todos_path
  end
end
