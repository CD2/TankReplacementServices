task :gen_pages do

    Page.create!(
    	name: 'Home',
    	path: '',
    	body: '<h1>Welcome to TRS - the region’s No.1 Oil Tank Supplier</h1>
				<p>TRS are the region\'s leading new oil tank suppliers. We supply, deliver and install domestic and commercial steel and plastic oil tanks to homes and businesses in Norfolk, Suffolk and Cambridgeshire.</p>
				<p>If you need a new oil tank please call us for a free no-obligation quotation. We have a wide range of tanks in stock, in both plastic and steel, at competitive prices. Professional installation is carried out by our own OFTEC trained engineers.</p>
				<p>As a family business with over 50 years experience in the oil industry we assure you of a very friendly service and highest professional standards.</p>')

	
    Page.create!(
    	name: 'About Us',
    	path: 'about',
    	banner: File.open(File.join(Rails.root, "seed_images/about_us_banner.jpg")),
    	catchline: 'A family business with over fifty years experience in the oil industry.<br>We believe in good old family service.',
    	body: '<h1>Welcome to TRS - the region’s No.1 Oil Tank Supplier</h1>
				<p>TRS are the region\'s leading supplier of domestic and commercial plastic or steel oil tanks. We offer competitive prices, a wide range of tanks in stock ready for delivery, friendly service and professional installation.</p>
				<p>We are a friendly family-run business based in Wendling - a lovely little village near Dereham, Norfolk, about 10 miles west of Norwich. Typically we install tanks in Norfolk, Suffolk, Cambridgeshire and Essex - if you live outside of these areas we maybe able to help you depending on the size of your project.</p>
				<p>The oil tanks we supply are the very best in terms of quality, reliability and value based on our 50 years of oil industry experience. We also design and manufacture our own high quality steel tanks. These can be custom built to your exact requirements and delivered anywhere in the UK.</p>
				<p>We believe in good \'old fashioned\' customer service, and we are very proud of our excellent reputation. The service you will receive will be professional, polite, fair and friendly. We are members of Norfolk Trusted Traders, an organisation run by Norfolk County Council where customers are able to leave independent feedback. You can visit their website to see what our customers say about us.</p>
				<p>All our installation engineers are fully OFTEC (Oil Firing Technical Association for the Petroleum Industry) registered and we are fully covered by public and employer\'s liability insurance.</p>
				<p>Our expertise also extends to a comprehensive and reliable boiler servicing and repair service for all makes of oil-fired boiler. Whatever your needs, you\'ll certainly be in safe hands with us.</p>')

    Page.create!(
    	name: 'Testimonials',
    	path: 'testimonial',
    	catchline: 'It\'s easy to claim good service, much harder to deliver it. We deliver!<br>We\'re happy to let our customers do the talking',
    	body: '')

end


