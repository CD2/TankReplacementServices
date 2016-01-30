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
	    image: File.open(File.join(Rails.root, 'seed_images/delivery_nationwide.jpg')))

    PromotionCard.create!(
	    name: 'Oil Leak Emergency?',
		body: 'Split tank? Leaking oil? Call our 24/7 emergency call out number (Norfolk and Suffolk only).',
		image: File.open(File.join(Rails.root, 'seed_images/oil_leak.jpg')))
end