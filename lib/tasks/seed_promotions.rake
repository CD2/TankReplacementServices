task :gen_promotions do

    PromotionCard.create!(
    	name: 'Oil Boiler Servicing',
    	body: 'We provide excellent value oil fired boiler servicing for most parts of Norfolk and Suffolk.',
    	image: File.open(File.join(Rails.root, "seed_images/fire.jpg")),
    	background: '#F37020',
    	color: '#FFFFFF')
	
end