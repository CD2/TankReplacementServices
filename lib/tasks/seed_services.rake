task :gen_services do

  task gen_services: :environment do 

    Service.create!(      
      name: 'Plastic Oil Tanks',
      body: '<p>TRS are the region\'s leading supplier of domestic plastic oil tanks, delivering to Norfolk, Suffolk, Cambridgeshire and Essex. We have a wide range of plastic oil tanks at very competitive prices in stock ready for delivery. We also offer a comprehensive and professional oil tank installation service.</p><p>If you are considering a new oil tank, please feel free to give us a call. We have over 50 years experience in the oil industry and we are always very happy to give free and friendly advice over the phone. We can help you choose the right style, make and size of tank for your exact needs. We can also give you a free, no-obligation estimate for the purchase and installation of the tank.</p><p>Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. As a matter of course we will be happy to transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><p>We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/header_image_placeholder.jpg"))
    )

    @plastic_domestic = Service.create!(
      name: 'Plastic Oil Tanks - Domestic',
      catchline: 'Wide range in stock, fair prices and professional installation. All you need to do is call.',
      body: '<p>TRS are the region\'s leading supplier of domestic plastic oil tanks, delivering to Norfolk, Suffolk, Cambridgeshire and Essex. We have a wide range of plastic oil tanks at very competitive prices in stock ready for delivery. We also offer a comprehensive and professional oil tank installation service.</p><p>If you are considering a new oil tank, please feel free to give us a call. We have over 50 years experience in the oil industry and we are always very happy to give free and friendly advice over the phone. We can help you choose the right style, make and size of tank for your exact needs. We can also give you a free, no-obligation estimate for the purchase and installation of the tank.</p><p>Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. As a matter of course we will be happy to transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><p>We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_09_plastic_tanks_domestic.jpeg"))
    )

    @plastic_commercial = Service.create!(
      name: 'Plastic Oil Tanks - Commercial',
      catchline: 'Wide range in stock, fair prices and professional installation. All you need to do is call.',
      body: '<p>TRS are the region\'s leading supplier of commercial plastic oil tanks, delivering to Norfolk, Suffolk, Cambridgeshire and Essex. We have a wide range of plastic oil tanks at very competitive prices in stock ready for delivery, suitable for offices, factories, warehouses, farms and industrial premises. We also offer a comprehensive and professional oil tank installation service.</p><p>If you are considering a new oil tank, please feel free to give us a call. We have over 50 years experience in the oil industry and we are always very happy to give free and friendly advice over the phone. We can help you choose the right style, make and size of tank for your exact needs. We can also give you a free, no-obligation estimate for the purchase and installation of the tank.</p><p>Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. As a matter of course we will be happy to transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><p>We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_11_plastic_tanks_commercial.jpeg"))
    )

    Service.create!(
      name: 'Steel Oil Tanks',
      body: '<p>TRS are the region\'s leading supplier of steel oil tanks. We have a wide range of standard steel oil tanks at very competitive prices in stock ready for delivery, or we can build one-off custom steel tanks to fit your exact needs and specifications. We also offer a comprehensive and professional oil tank installation service.</p><h2>STANDARD TANKS</h2><p>A wide range of high quality steel oil tanks in stock ready for immediate delivery and professional installation. We can help you choose the right style, make and size of tank for your exact needs. We also offer you free, no-obligation estimates. Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. We transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><h2>CUSTOM MADE STEEL TANKS</h2><p>We manufacture our own range of superb quality British made steel tanks. We are happy to undertake one-off builds and construct a steel tank to your individual specifications. If you require a custom made steel tank, please give us a call. We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/header_image_placeholder.jpg"))
    )

    @steel_domestic = Service.create!(
      name: 'Steel Oil Tanks - Domestic',
      catchline: 'Off-the-shelf or custom made steel tanks - whatever you need, we can supply it.',
      body: '<p>TRS are the region\'s leading supplier of steel oil tanks. We have a wide range of standard steel oil tanks at very competitive prices in stock ready for delivery, or we can build one-off custom steel tanks to fit your exact needs and specifications. We also offer a comprehensive and professional oil tank installation service.</p><h2>STANDARD TANKS</h2><p>A wide range of high quality steel oil tanks in stock ready for immediate delivery and professional installation. We can help you choose the right style, make and size of tank for your exact needs. We also offer you free, no-obligation estimates. Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. We transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><h2>CUSTOM MADE STEEL TANKS</h2><p>We manufacture our own range of superb quality British made steel tanks. We are happy to undertake one-off builds and construct a steel tank to your individual specifications. If you require a custom made steel tank, please give us a call. We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_10_steel_tanks_domestic.jpeg"))
    )

    @steel_commercial = Service.create!(
      name: 'Steel Oil Tanks - Commercial',
      catchline: 'Off-the-shelf or custom made steel tanks - whatever you need, we can supply it.',
      body: '<p>TRS are the region\'s leading supplier of steel oil tanks. We have a wide range of standard steel oil tanks at very competitive prices in stock ready for delivery, or we can build one-off custom steel tanks to fit your exact needs and specifications. We also offer a comprehensive and professional oil tank installation service.</p><h2>STANDARD TANKS</h2><p>A wide range of high quality steel oil tanks in stock ready for immediate delivery and professional installation. We can help you choose the right style, make and size of tank for your exact needs. We also offer you free, no-obligation estimates. Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. We transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><h2>CUSTOM MADE STEEL TANKS</h2><p>We manufacture our own range of superb quality British made steel tanks. We are happy to undertake one-off builds and construct a steel tank to your individual specifications. If you require a custom made steel tank, please give us a call. We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_12_steel_tanks_commercial.jpeg"))
    )

    @fuel_dispensers = Service.create!(
      name: 'Fuel Dispenser Tanks',
      catchline: 'Superior, custom-made, British-built Fuel Tanks with nationwide delivery. Call for a free estimate.',
      body: '<p>We design and manufacture our own range of superior british-made fuel dispenser tanks, which we believe offer you an unbeatable combination of value and quality. These robust tanks are available as standard \'off the shelf\' products with capacities of 1,000-15,000 litres, or can be custom built to your exact requirements with optional inner plastic tanks and optional oil filtration systems.</p><p>TRS 10,000 and 15,000 fuel dispenser tanks come complete with 56 litre per minute cube pump, 6 metre hose, auto shut off nozzle, overfill  alarm, hydrostatic contents gauge and golden rod 10-micron filter.</p><p>With our 5,000, 10,000 and 15,000 litre tanks you can choose to have an optional all in one dispensing unit with ultimate filtration system. For farmers using 4th and 5th generation equipment, having the cleanest oil available is a must - it prevents farm machinery costing hundreds of thousands of pounds developing problems caused by dirty oil or water. Our factory fitted filtration systems clean your fuel as it goes into your tank, and as it is dispensed from your tank. Your fuel will be cleaned of dirt and water through a series of filtration filters to ensure your ultra modern machinery stays working in the field.</p><p>We deliver nationwide, so please give us a call to discuss your requirements.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_13_fuel_station_tanks.jpeg"))
    )

    @oil_security = Service.create!(
      name: 'Oil Tank Installations',
      catchline: 'Worried about oil theft? We can help you! We have a range of oil security products available.',
      body: '<p>We install plastic and steel oil tanks to domestic and commercial customers across Norfolk, Suffolk, Cambridgeshire and Essex. In addition we can deliver and install fuel dispenser tanks nationwide.</p><p>All installations are carried out by our own fully trained OFTEC accredited engineers - we never sub contract.</p><p>Oil tank installation will be on a mutually agreed date and time convenient to you. We respect our customers property and our installation team will leave everything clean, neat and tidy as you would expect them to do. For commercial customers we can offer an \'out of hours\' installation service to minimise disruption to your business.</p><p>During installation we will transfer any oil you have in your old tank into your new tank, and we will take away your old tank for you for safe disposal.</p><p>Our installation work is fully guaranteed, and our after sales service is excellent - if you need advice or have any problems please call us and we will be happy to help you.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_14_oil_security.jpeg"))
    )

    @oil_conditioning = Service.create!(      
      name: 'Oil Tank Installations - Domestic',
      catchline: 'Call us for . . . (TRS to advise)',
      body: '<p>We install plastic and steel oil tanks to domestic and commercial customers across Norfolk, Suffolk, Cambridgeshire and Essex. In addition we can deliver and install fuel dispenser tanks nationwide.</p><p>All installations are carried out by our own fully trained OFTEC accredited engineers - we never sub contract.</p><p>Oil tank installation will be on a mutually agreed date and time convenient to you. We respect our customers property and our installation team will leave everything clean, neat and tidy as you would expect them to do. For commercial customers we can offer an \'out of hours\' installation service to minimise disruption to your business.</p><p>During installation we will transfer any oil you have in your old tank into your new tank, and we will take away your old tank for you for safe disposal.</p><p>Our installation work is fully guaranteed, and our after sales service is excellent - if you need advice or have any problems please call us and we will be happy to help you.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_15_oil_conditioning.jpeg"))
    )

    Service.create!(      
      name: 'Oil Tank Installations - Commercial',
      body: '<p>We install plastic and steel oil tanks to domestic and commercial customers across Norfolk, Suffolk, Cambridgeshire and Essex. In addition we can deliver and install fuel dispenser tanks nationwide.</p><p>All installations are carried out by our own fully trained OFTEC accredited engineers - we never sub contract.</p><p>Oil tank installation will be on a mutually agreed date and time convenient to you. We respect our customers property and our installation team will leave everything clean, neat and tidy as you would expect them to do. For commercial customers we can offer an \'out of hours\' installation service to minimise disruption to your business.</p><p>During installation we will transfer any oil you have in your old tank into your new tank, and we will take away your old tank for you for safe disposal.</p><p>Our installation work is fully guaranteed, and our after sales service is excellent - if you need advice or have any problems please call us and we will be happy to help you.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/header_image_placeholder.jpg"))
    )

    @accessories = Service.create!(
      name: 'Oil Tank Accessories',
      catchline: 'Call us for . . . (TRS to advise)',
      body: '</p><p>Help needed to write this section</p><p>Oil Tank security and . . .</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_16_accessories.jpeg"))
    )

    @tank_decommissioning = Service.create!(
      name: 'Oil Tank Decommissioning',
      catchline: 'For professional large-scale nationwide tank decommissioning, call TRS!',
      body: '<p>TRS  can safely and efficiently decommission (remove) any oil tank that has reach the end of it\'s life or simply needs replacing. We use our own fully trained and OFTEC accredited engineers to carry out this work for you. As well as safely decommissioning the tanks we can clean up contaminated areas such as surrounding soils or hardstanding areas.</p><p>Our service is available to both domestic and commercial customers, so whether you have a huge industrial tank or a small tank serving your home, we have the resources and skills to carry out a safe and efficient removal. All materials will be disposed of safely in accordance with current legislation and industry best practice.</p><h2>Old for New Tanks</h2><p>If you require a new tank to replace the one we are removing please invite us to quote for you. We offer a wide range of domestic and commercial plastic and steel tanks at excellent prices. Our professional installation service will include transferring of any useable remaining oil from your old tank into your new tank.</p>',
      banner: File.open(File.join(Rails.root, "seed_images/trs_header_17_tank_decommissioning.jpeg"))
    )


  end

end

