require 'wice_grid'
class FactorysController < ApplicationController
	
	def show
    if(session[:user_id])
       if params[:search]
        @vs = params[:search]
         @factory= initialize_grid(Factory,conditions: ["FPKID = ? OR Factory_ID = ? OR Factory_Name = ? OR  City = ?", @vs , @vs ,@vs,@vs], :per_page => 10)  
       else
         @factory = initialize_grid(Factory,:per_page=>10)
     end
    else
    render 'sessions/login'
    end
  end

  def view
    if(session[:user_id])
       var = request.query_parameters
      @data = var['FPKID']
       @viewfpkid =Factory.where("FPKID = ? ", @data )
    else
       render 'sessions/login'
    end
  end

  def external_view
     if(session[:user_id])
       var = request.query_parameters
      @data1 = var['Factory_ID']
       @view_extern =Externalid.where("Factory_ID = ? ", @data1 )
    else
       render 'sessions/login'
    end
    end


end
