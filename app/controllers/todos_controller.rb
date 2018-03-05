class TodosController < ApplicationController
  def index
    @todo = Todo.all
  end
end
