class TodosController < ApplicationController
  respond_to :html

  def index
    respond_with @todos = Todo.all
  end
end
