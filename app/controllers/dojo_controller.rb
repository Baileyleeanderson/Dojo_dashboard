class DojoController < ApplicationController
  def index
    @dojo= Dojo.all
  end

  def dojos
    @dojos= Dojo.all
    render "dojos"
  end

  def new
  end

  def create
    dojo = Dojo.new(dojo_params)
    dojo.save
    if !dojo.save
      flash[:errors] = "Invalid Form Submission"
      redirect_to '/dojos/new'
    else
      flash[:success] = "You Added a new Dojo!"
      redirect_to '/dojos'
    end
  end
  
  def show
    @dojo = Dojo.find(params[:id])
    @students = Student.where(dojo_id:@dojo)
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    dojo= Dojo.find(params[:id])
    dojo.branch = params[:branch]
    dojo.street = params[:street]
    dojo.city = params[:city]
    dojo.state = params[:state]
    dojo.save
    redirect_to '/dojos'
  end
 
  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to '/dojos'
  end

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
