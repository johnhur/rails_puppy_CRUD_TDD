class PuppiesController < ApplicationController


  def index
  	@puppies = Puppy.all
  end

  def new
  	@puppy = Puppy.new
  end

  def create
  	puts puppy_params
  	@puppy = Puppy.create(puppy_params)
  	if @puppy.save
  	  redirect_to puppies_path, notice: 'Puppy has been added!'
  	else
  	  render :new
  	end
  end

  def edit
  	@puppy = Puppy.find(params[:id])
  end

  def show
  	@puppy = Puppy.find_by(id: params[:id])
  end

  def update
  	@puppy = Puppy.find_by(id: params[:id])
  	@puppy.update(puppy_params)
  	if @puppy.save
  		redirect_to puppy_path(@puppy), notice: 'Puppy has been updated!'
  	else
  		render :edit
  	end
  end

  def destroy
  	@puppy = Puppy.find_by(id: params[:id])
  	@puppy.destroy
  	redirect_to puppies_path
  end

private

  def puppy_params
  	params.require(:puppy).permit(
  		:name,
  		:age,
  		:bio,
  		:breed,
  		:image_url
  		)
  end

end
