class PrivilegesController < ApplicationController
	def index
		@privileges = Privilege.all
	end

	def show
		@privileges = Privilege.all
		render :index
	end
		
	def new
		@privileges = Privilege.new
	end

	def create
		@privileges = Privilege.new(privilege_parmas)

		if @privileges.save
			redirect_to '/privileges/'
		else
			render :new
		end
	end

	def edit
		@privileges = Privilege.find(params[:id])
	end

	def update
		@privileges = Privilege.find(params[:id])
		if @privileges.update_attributes(privilege_parmas)
			redirect_to '/privileges/'
		else
			render 'edit'
		end
	end

	private
	def privilege_parmas
		params.require(:privilege).permit(:titulo, :crearUsuario, :crearPeticion, :crearRespuesta)
	end
end
