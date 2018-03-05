class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :cantidad_carrito

	def cantidad_carrito
    #@quantity_order para el navbar
    if user_signed_in?
    @quantity_todos = current_user.todo_lists.count
    @quantity_total = Todo.all.count
    end
	end

  private
  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:picture])
	end
end
