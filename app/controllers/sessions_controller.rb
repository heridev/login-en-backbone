class SessionsController < ApplicationController
  respond_to :json
  
  def index
  end

  def create
    @errors= ["Error al momento de validarse",
              "Usuario erroneo",
              "password no es correcto"
             ]

     if params[:email] == "heriberto.perez@crowdint.com" && params[:password]== "12345679"
       render status: :ok, json: []
     else
       render status: :unprocessable_entity, json: @errors
     end
  end
end
