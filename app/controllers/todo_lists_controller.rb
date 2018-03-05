class TodoListsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		if params[:bandera] == 'listo'
			listado = TodoList.new(
			completed: true,
			todo_id: params[:todo_id],
			user: current_user
			)
			if listado.save
				redirect_to root_path, notice: 'Tarea Completada!'
			elsif
				redirect_to root_path, alert: 'no pudimos guardarlo!'
			end
			
		elsif params[:bandera] == 'no listo'
			TodoList.find_by(todo_id: params[:todo_id]).destroy
			
			redirect_to root_path, notice: 'Desmarcado!'
		end
		
	end
	
	def show
		id_user = TodoList.where(todo_id: params[:id]).pluck(:user_id)
		@usuarios = User.where(id: id_user).order('id asc').limit(5)
		cantidad = User.where(id: id_user).count
		if cantidad > 5
			@restante = User.where(id: id_user).order('id desc').limit(cantidad-5)
		end
	end
	
	
	def index
		@realizados = current_user.todos
	end
	
end
