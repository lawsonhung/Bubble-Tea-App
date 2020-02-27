# Credits: https://www.javatpoint.com/ruby-on-rails-crud

class BubbleTeasController < ApplicationController
  # GET method to get all bubble teas from database
  def index
    @bubble_teas = BubbleTea.all
  end

  # GET method to get a bubble tea by id
  def show
    @bubble_tea = BubbleTea.find(params[:id])
  end

  # GET method for the new bubble tea form
  def new
    @bubble_tea = BubbleTea.new
  end

  # POST method for processing form data
  def create
    # @bubble_tea = BubbleTea.new(bubble_tea_params)
    # @bubble_tea = BubbleTea.new(params.require(:bubble_tea).permit(:tea_type, :boba, :sugar_level))
    #
    # if @bubble_tea.save
    #   flash[:notice] = 'Bubble tea added!'
    #   redirect_to bubble_tea_path(@bubble_tea)
    # else
    #   flash[:error] = 'Failed to create your bubble tea order!'
    #   render :new
    # end

    @bubble_tea = BubbleTea.new(params.require(:bubble_tea).permit(:tea_type, :boba, :sugar_level))
    if @bubble_tea.valid?
      @bubble_tea.save
      redirect_to bubble_tea_path(@bubble_tea)
    else
      flash[:errors] = @bubble_tea.errors.full_messages
      redirect_to new_bubble_tea_path
    end
  end

   # GET method for editing a bubble tea based on id
  def edit
    @bubble_tea = BubbleTea.find(params[:id])
  end

  # PUT method for updating in database a bubble tea based on id
  def update
    @bubble_tea = BubbleTea.find(params[:id])
    # if @bubble_tea.update_attributes(bubble_tea_params)
    # if @bubble_tea.update_attributes(params.require(:bubble_tea).permit(:tea_type, :boba, :sugar_level))
    #   flash[:notice] = 'Bubble tea updated!'
    #   redirect_to bubble_tea_path(@bubble_tea)
    # else
    #   flash[:error] = 'Failed to edit your order!'
    #   render :edit
    # end

    if @bubble_tea.update(params.require(:bubble_tea).permit(:tea_type, :boba, :sugar_level))
      redirect_to bubble_tea_path(@bubble_tea)
    else
      flash[:errors] = @bubble_tea.errors.full_messages
      redirect_to edit_bubble_tea_path(@bubble_tea)
    end
  end

  # DELETE method for deleting a product from database based on id
  def destroy
    @bubble_tea = BubbleTea.find(params[:id])
    if @bubble_tea.delete
      flash[:notice] = 'Your order has been deleted!'
      redirect_to bubble_teas_path
    else
      flash[:error] = 'Failed to delete this order!'
      render :destroy
    end
  end

end
