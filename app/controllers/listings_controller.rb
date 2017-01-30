class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:birth_date,:show, :update, :basics, :description, :address, :price, :photos, :calendar, :bankaccount, :publish]

  def index
    @listings = current_user.listings
  end

  def show
    @photos = @listing.photos
  end

  def new
    # 現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

  def create
    # パラメーターとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
    end

  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to :back, notice: "更新できました"
    end
  end

  def basics
  end

  def description
  end

  def address
  end

  def price
  end

  def photos
    @photo = Photo.new
  end

  def calendar
  end

  def bankaccount
  end

  def publish
  end



  private
  def listing_params
    params.require(:listing).permit(
      :birth_date,
      :sex,
      :name,
      :home_type,
      :pet_type,
      :breeding_years,
      :pet_size,
      :price_pernight,
      :address,
      :listing_title,
      :listing_content,
      :active,
      :initial_hm_plan_date,
      :hm_plan_date,
      :certification_date,
      :period_of_the_certification,
      :personal_needs,
      :family_needs, 
      :service_category, 
      :comprehensive_aid_policy, 
      )
  end

  def set_listing
    @listing = Listing.find(params[:id]) 
  end


end