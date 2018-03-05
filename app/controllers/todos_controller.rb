class TodosController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	
	def index
		# realizados = User.find(1).todo_lists.pluck(:todo_id).uniq
		# Todo.where.not(id: realizados)
		
		@todo = Todo.all
	end
	
end
