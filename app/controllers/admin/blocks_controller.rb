class Admin::BlocksController < AdminController

  before_action :set_block, only: [:edit, :update, :destroy]

  def index
    @blocks = Block.all
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    if @block.save
      flash[:success] = 'Block Created'
      redirect_to admin_blocks_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @block.update_attributes(block_params)
    if @block.save
      flash[:success] = 'Block Updated'
      redirect_to admin_blocks_path
    else
      flash[:error] = 'Sorry, an error occured'
      render :edit
    end

  end

  def destroy
    if @block.destroy
      flash[:success] = 'Block Destroyed'
    else
      flash[:error] = 'Sorry, an error occured'
    end
    redirect_to admin_blocks_path

  end

  private

  def block_params
    params.require(:block).permit(:title, :body, :link_path)
  end

  def set_block
    @block = Block.find(params[:id])
  end
  
end