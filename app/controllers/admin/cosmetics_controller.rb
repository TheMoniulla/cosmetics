class Admin::CosmeticsController < Admin::AdminController
  before_action :get_cosmetic, only: [:show, :edit, :update, :destroy]

  def new
    @cosmetic = Cosmetic.new
  end

  def index
    @cosmetics = Cosmetic.all
  end

  def show
    @comments = @cosmetic.comments
  end

  def edit
  end

  def create
    @cosmetic = Cosmetic.new(cosmetic_params)
    if @cosmetic.save
      redirect_to admin_cosmetics_path
    else
      render :new
    end
  end

  def update
    if @cosmetic.update_attributes(cosmetic_params)
      redirect_to admin_cosmetics_path
    else
      render :edit
    end
  end

  def destroy
    @cosmetic.destroy
    redirect_to admin_cosmetics_path
  end

  private

  def get_cosmetic
    @cosmetic = Cosmetic.find(params[:id])
  end

  def cosmetic_params
    params.require(:cosmetic).permit(:name, :brand, :cosmetic_type, :price, :expiration_date)
  end
end
