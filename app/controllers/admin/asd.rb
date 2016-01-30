class Admin::PromotionCardsController < AdminController

	before_action :set_promotion_card, only: [:edit, :update, :destroy]

	def index
		@promotion_cards = PromotionCard.all
	end

	def new
		@promotion_card = PromotionCard.new
	end

	def create
		@promotion_card = PromotionCard.new(promotion_card_params)
		if @promotion_card.save
			flash[:success] = 'Promotion Card Created'
			redirect_to [:admin, :promotion_cards]
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@promotion_card.update_attributes(promotion_card_params)
		if @promotion_card.save
			flash[:success] = 'Promotion Card Updated'
			redirect_to [:admin, :promotion_cards]
		else
			flash[:error] = 'Sorry, an error occured'
			render :edit
		end

	end

	def destroy
		if @promotion_card.destroy
			flash[:success] = 'Promotion Card Destroyed'
		else
			flash[:error] = 'Sorry, an error occured'
		end
		redirect_to [:admin, :promotion_cards]

	end

	private

	def promotion_card_params
		params.require(:promotion_card).permit(:name, :path, :body)
	end

	def set_promotion_card
      @promotion_card = PromotionCard.find(params[:id])
    end

end