task :gen_promotions do

    PromotionCard.create!(
    	name: 'Oil Boiler Servicing',
    	body: 'We provide excellent value oil fired boiler servicing for most parts of Norfolk and Suffolk.',
    	image: File.open(File.join(Rails.root, "seed_images/fire.jpg")),
    	background: '#F37020',
    	color: '#FFFFFF')


    PromotionCard.create!(
	    name: 'Delivery Nationwide',
	    body: 'For commercial and Fuel Master Steel Tanks we can deliver to any part of the UK.',
	    image: File.open(File.join(Rails.root, 'seed_images/oil_tank.jpg')))

    PromotionCard.create!(
        name: 'Oil Leak Emergency?',
        body: 'Split tank? Leaking oil? Call our 24/7 emergency call out number (Norfolk and Suffolk only).',
        image: File.open(File.join(Rails.root, 'seed_images/oil_leak.jpg')))
    
    PromotionCard.create!(
        name: 'Great Prices',
        body: 'If you\'re looking for a new oil tank give us a call. Estimates are free and without obligation.',
        image: File.open(File.join(Rails.root, 'seed_images/oil_tank.jpg')))

    PromotionCard.create!(
        name: 'Oil Tanks Now In Stock',
        body: 'We have a large range of plastic and steel oil tanks in stock ready for delivery and installation',
        image: File.open(File.join(Rails.root, 'seed_images/fire.jpg')),
        background: '#F37020',
        color: '#FFFFFF')

    PromotionCard.create!(
	    name: 'Oil Boiler Servicing',
		body: 'Call us for an oil fired boiler service. We offer a professional and excellent value service for all makes of oil fired boiler.',
		image: File.open(File.join(Rails.root, 'seed_images/af_promotion.jpg')))



    PagePromotion.create!(page_id: 1, promotion_card_id: 1)
    PagePromotion.create!(page_id: 1, promotion_card_id: 2)
    PagePromotion.create!(page_id: 1, promotion_card_id: 3)

    PagePromotion.create!(page_id: 2, promotion_card_id: 3)
    PagePromotion.create!(page_id: 2, promotion_card_id: 4)
    PagePromotion.create!(page_id: 2, promotion_card_id: 5)
    PagePromotion.create!(page_id: 2, promotion_card_id: 6)

    PagePromotion.create!(page_id: 3, promotion_card_id: 3)
    PagePromotion.create!(page_id: 3, promotion_card_id: 4)
    PagePromotion.create!(page_id: 3, promotion_card_id: 5)
    PagePromotion.create!(page_id: 3, promotion_card_id: 6)

    PagePromotion.create!(page_id: 4, promotion_card_id: 3)
    PagePromotion.create!(page_id: 4, promotion_card_id: 4)
    PagePromotion.create!(page_id: 4, promotion_card_id: 5)
    PagePromotion.create!(page_id: 4, promotion_card_id: 6)

    PagePromotion.create!(page_id: 5, promotion_card_id: 3)
    PagePromotion.create!(page_id: 5, promotion_card_id: 4)
    PagePromotion.create!(page_id: 5, promotion_card_id: 5)
    PagePromotion.create!(page_id: 5, promotion_card_id: 6)

    PagePromotion.create!(page_id: 6, promotion_card_id: 3)
    PagePromotion.create!(page_id: 6, promotion_card_id: 4)
    PagePromotion.create!(page_id: 6, promotion_card_id: 5)
    PagePromotion.create!(page_id: 6, promotion_card_id: 6)

    PagePromotion.create!(page_id: 7, promotion_card_id: 3)
    PagePromotion.create!(page_id: 7, promotion_card_id: 4)
    PagePromotion.create!(page_id: 7, promotion_card_id: 5)
    PagePromotion.create!(page_id: 7, promotion_card_id: 6)

end