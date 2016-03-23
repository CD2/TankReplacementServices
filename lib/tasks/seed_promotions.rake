task :gen_promotions do

    PromotionCard.create!(
        name: 'Deal Prices For Farmers',
        body: 'We have special deals for Farmers on custom made steel tanks.Call 01362 687144 for details.',
        image: File.open(Rails.root + 'seed_images/promotion_1.jpg')
    )
    PromotionCard.create!(
        name: 'British Made Custom Tanks',
        body: 'We design and build our own best-quality steel tanks. We can build one-offs to your exact needs.',
        image: File.open(Rails.root + 'seed_images/promotion_2.jpg')
    )
    PromotionCard.create!(
        name: 'Oil Boiler Servicing',
        body: 'We provide professional oil-fired boiler servicing for most parts of Norfolk and Suffolk.',
        image: File.open(Rails.root + 'seed_images/promotion_3.jpg',
        background: '#F87100')
    )
    PromotionCard.create!(
        name: 'Oil Security',
        body: 'Worried about oil theft? Ask us for details of our range of effective oil security devices.',
        image: File.open(Rails.root + 'seed_images/promotion_4.jpg')
    )
    PromotionCard.create!(
        name: 'Oil Tank Removal',
        body: 'We’ll safely dispose of your old tank and transfer your existing oil to your new tank.',
        image: File.open(Rails.root + 'seed_images/promotion_5.jpg')
    )
    PromotionCard.create!(
        name: 'Leaking Oil Emergency?',
        body: 'Split tank? Leaks? Call our 24/7 emergency number 0777 777 7777(Norfolk and Suffolk only).',
        image: File.open(Rails.root + 'seed_images/promotion_6.jpg',
        background: '#FFBB00')
    )
    PromotionCard.create!(
        name: 'Nationwide Delivery',
        body: 'Subject to the order value, we can deliver and install custom made tanks in all parts of the UK.',
        image: File.open(Rails.root + 'seed_images/promotion_7.jpg')
    )
    PromotionCard.create!(
        name: 'Oftec-trained Engineers',
        body: 'Our oil tank installations are carried out by our own highly skilled OFTEC-trained engineers.',
        image: File.open(Rails.root + 'seed_images/promotion_8.jpg')
    )
    PromotionCard.create!(
        name: 'Custom Built Tanks',
        body: 'We can build a one-off tank to meet your exact needs. Call us for a free quotation.',
        image: File.open(Rails.root + 'seed_images/promotion_9.jpg')
    )
    PromotionCard.create!(
        name: 'Trs To Advise',
        body: 'TRS advice needed for the image and text content required in this section. To be updated.',
        image: File.open(Rails.root + 'seed_images/promotion_10.jpg')
    )
    PromotionCard.create!(
        name: 'Excellent Service',
        body: 'We are a family-run business and we provide good old-fashioned customer service with a smile',
        image: File.open(Rails.root + 'seed_images/promotion_11.jpg')
    )
    PromotionCard.create!(
        name: 'Wide Range In Stock',
        body: 'We have a wide range of oil tanksin stock from 500 to 3000 litres for quick delivery',
        image: File.open(Rails.root + 'seed_images/promotion_12.jpg')
    )




    @home.page_promotions.create!(promotion_card_id: 12)
    @home.page_promotions.create!(promotion_card_id: 3)
    @home.page_promotions.create!(promotion_card_id: 6)

    @about_us.page_promotions.create!(promotion_card_id: 8)
    @about_us.page_promotions.create!(promotion_card_id: 11)
    @about_us.page_promotions.create!(promotion_card_id: 3)

    @testimonials.page_promotions.create!(promotion_card_id: 8)
    @testimonials.page_promotions.create!(promotion_card_id: 11)
    @testimonials.page_promotions.create!(promotion_card_id: 3)

    @emergency_help.page_promotions.create!(promotion_card_id: 6)
    @emergency_help.page_promotions.create!(promotion_card_id: 4)
    @emergency_help.page_promotions.create!(promotion_card_id: 3)

    @oil_boiler.page_promotions.create!(promotion_card_id: 3)
    @oil_boiler.page_promotions.create!(promotion_card_id: 3)
    @oil_boiler.page_promotions.create!(promotion_card_id: 11)
    
    @faqs.page_promotions.create!(promotion_card_id: 11)
    @faqs.page_promotions.create!(promotion_card_id: 4)
    @faqs.page_promotions.create!(promotion_card_id: 8)
    
    @news.page_promotions.create!(promotion_card_id: 12)
    @news.page_promotions.create!(promotion_card_id: 3)
    @news.page_promotions.create!(promotion_card_id: 6)

    @contact.page_promotions.create!(promotion_card_id: 11)
    @contact.page_promotions.create!(promotion_card_id: 3)
    @contact.page_promotions.create!(promotion_card_id: 6)





    @plastic_domestic.page_promotions.create!(promotion_card_id: 12)
    @plastic_domestic.page_promotions.create!(promotion_card_id: 8)
    @plastic_domestic.page_promotions.create!(promotion_card_id: 5)

    @plastic_commercial.page_promotions.create!(promotion_card_id: 12)
    @plastic_commercial.page_promotions.create!(promotion_card_id: 8)
    @plastic_commercial.page_promotions.create!(promotion_card_id: 1)

    @steel_domestic.page_promotions.create!(promotion_card_id: 12)
    @steel_domestic.page_promotions.create!(promotion_card_id: 8)
    @steel_domestic.page_promotions.create!(promotion_card_id: 5)

    @steel_commercial.page_promotions.create!(promotion_card_id: 12)
    @steel_commercial.page_promotions.create!(promotion_card_id: 8)
    @steel_commercial.page_promotions.create!(promotion_card_id: 1)

    @fuel_dispensers.page_promotions.create!(promotion_card_id: 2)
    @fuel_dispensers.page_promotions.create!(promotion_card_id: 7)
    @fuel_dispensers.page_promotions.create!(promotion_card_id: 1)

    @oil_security.page_promotions.create!(promotion_card_id: 4)
    @oil_security.page_promotions.create!(promotion_card_id: 11)
    @oil_security.page_promotions.create!(promotion_card_id: 12)

    @oil_conditioning.page_promotions.create!(promotion_card_id: 10)
    @oil_conditioning.page_promotions.create!(promotion_card_id: 10)
    @oil_conditioning.page_promotions.create!(promotion_card_id: 10)

    @accessories.page_promotions.create!(promotion_card_id: 10)
    @accessories.page_promotions.create!(promotion_card_id: 10)
    @accessories.page_promotions.create!(promotion_card_id: 10)

    @tank_decommissioning.page_promotions.create!(promotion_card_id: 10)
    @tank_decommissioning.page_promotions.create!(promotion_card_id: 10)
    @tank_decommissioning.page_promotions.create!(promotion_card_id: 10)


end