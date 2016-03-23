task :gen_pages do

    @home = Page.create!(
    	name: 'Home',
    	path: '',
        catchline: 'A warm welcome to TRS, the region\'s leading oil tank suppliers and installers.',
    	body: '<h1>Welcome to TRS - the region’s No.1 Oil Tank Supplier</h1>
				<p>TRS are the region\'s leading new oil tank suppliers. We supply, deliver and install domestic and commercial steel and plastic oil tanks to homes and businesses in Norfolk, Suffolk and Cambridgeshire.</p>
				<p>If you need a new oil tank please call us for a free no-obligation quotation. We have a wide range of tanks in stock, in both plastic and steel, at competitive prices. Professional installation is carried out by our own OFTEC trained engineers.</p>
				<p>As a family business with over 50 years experience in the oil industry we assure you of a very friendly service and highest professional standards.</p>')

	
    @about_us = Page.create!(
    	name: 'About Us',
    	path: 'about',
    	banner: File.open(File.join(Rails.root, "seed_images/about_us_banner.jpg")),
    	catchline: 'A family business built on traditional values with over 50 years experience in the oil industry.',
    	body: '<h1>Welcome to TRS - the region’s No.1 Oil Tank Supplier</h1>
				<p>TRS are the region\'s leading supplier of domestic and commercial plastic or steel oil tanks. We offer competitive prices, a wide range of tanks in stock ready for delivery, friendly service and professional installation.</p>
				<p>We are a friendly family-run business based in Wendling - a lovely little village near Dereham, Norfolk, about 10 miles west of Norwich. Typically we install tanks in Norfolk, Suffolk, Cambridgeshire and Essex - if you live outside of these areas we maybe able to help you depending on the size of your project.</p>
				<p>The oil tanks we supply are the very best in terms of quality, reliability and value based on our 50 years of oil industry experience. We also design and manufacture our own high quality steel tanks. These can be custom built to your exact requirements and delivered anywhere in the UK.</p>
				<p>We believe in good \'old fashioned\' customer service, and we are very proud of our excellent reputation. The service you will receive will be professional, polite, fair and friendly. We are members of Norfolk Trusted Traders, an organisation run by Norfolk County Council where customers are able to leave independent feedback. You can visit their website to see what our customers say about us.</p>
				<p>All our installation engineers are fully OFTEC (Oil Firing Technical Association for the Petroleum Industry) registered and we are fully covered by public and employer\'s liability insurance.</p>
				<p>Our expertise also extends to a comprehensive and reliable boiler servicing and repair service for all makes of oil-fired boiler. Whatever your needs, you\'ll certainly be in safe hands with us.</p>')

    @faqs = Page.create!(
        name: 'FAQs',
        path: 'faq',
        catchline: 'If you can\'t find an answer to your question please call our Head Office and we will be pleased to help you.',
        body: '<h1>Frequently Asked Questions</h1>')

    @testimonials = Page.create!(
        name: 'Testimonials',
        path: 'testimonials',
        catchline: 'It\'s easy to claim good service, much harder to deliver it. We deliver!',
        body: '<h1>Customer Testimonials</h1>')

    @emergency_help = Page.create!(
    	name: 'Emergency Help',
    	path: 'emergency',
    	catchline: 'If you have a genuine emergency and are in Norfolk or Suffolk please call our 24/7 help line : XXXXX XXXXXX',
    	body: '<h1>Emergency? Stay calm and call TRS.</h1>
                <p>Is your oil tank splitting? Do you have oil leaking from your tank? If so, call us on <b>07974 454904</b>.</p>
                <p><b>This is an emergency number available 24 hours a day, 7 days a week, to customers with a genuine emergency in Norfolk and Suffolk only.</b> We are sorry but we cannot help you if you live outside of Norfolk or Suffolk.</p>
                <p>You do not need to have purchased your tank from TRS in order to call us - we will try to help regardless of who you purchased your tank from. Our emergency service may be chargeable depending upon your location and your needs.</p>
                <h2>HOW TO AVOID AN EMERGENCY AND LEAKS FROM YOUR TANK</h2>
                <p>Some non-bunded (single skinned) plastic tanks can split and cause leaks. This is an environmental hazard, not to mention a costly a loss of oil.</p>
                <p>Plastic non-bunded oil tanks more than 2 years old are the most vulnerable to splitting. This can be due to the affects of UV rays from the sun during very hot summer weather, or frost and freezing temperatures in the winter.</p>
                <p>Please take a close look at your tank, and inspect it carefully. If your tank is showing any signs of <b>small scratches</b> or <b>cuts on the tank<b/>, take a good quality close up picture and e-mail it with your phone number to info@tankreplacementservices.co.uk or call us on the emergency number <b>07974 454904</b>. We will check it for you, free of charge.</p>')

    @oil_boiler = Page.create!(
        name: 'Oil Fired Boiler Servicing',
        path: 'servicing',
        catchline: 'For customers within 30 miles of Dereham we offer excellent value, professional oil-fired boiler servicing.',
        body: '<h1>Oil Fired Boiler Servicing & Installation</h1>
                <p>TRS are delighted to offer you a professional and friendly service for all your oil-fired boiler needs.</p>
                <h2>OIL-FIRED BOILER SERVICING</h2>
                <p>We provide an excellent value, professional boiler service for new and existing customers within 30 miles of Dereham, Norfolk. All makes and ages of oil-fired boilers serviced. As well as oil boiler servicing we can carry out breakdown cover, repairs, system flushes, upgrades and fault finding. All work is competitively priced, fully guaranteed and carried out by our own fully trained, OFTEC approved engineers.</p>
                <h2>OIL-FIRED BOILER INSTALLATION</h2>
                <p>We provide professional installation of new oil-fired boilers for new and existing customers within 30 miles of Dereham, Norfolk. All makes of oil-fired boilers installed. The installation service is backed by optional maintenance plans and breakdown cover. Our installation service is competitively priced, fully guaranteed and carried out to the highest professional standards by our own fully trained, OFTEC approved engineers.</p>
                <p>For servicing or installations please call 01362 687 144 or click here to request a call back
                Or for more information please visit our boiler servicing web site www.xxxxxxxxxxxxxxxxxxxxxxxxx.xo.uk</p>')

    @news = Page.create!(
        name: 'News',
        path: 'news',
        catchline: 'Keep up to date with the latest oil industry and TRS news.',
        body: '<h1>Latest Oil News from TRS</h1>
                <p>News headline from TRS</p>
                <p>Text to be provided by TRS ...</p>')

    @contact = Page.create!(path: 'contact', catchline: 'We welcome all enquiries. Feel free to call us on 01362 687144 or 01206 231555.')

end



