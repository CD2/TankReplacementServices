task :gen_faqs do

	Faq.create!(question: 'I\'m not sure what oil tank I need, can you help?', answer: 'Yes. Please give us a call - we\'ll ask you a few questions about your property and can then advise you on the best type and size of tank for you. Our estimates are free and without obligation.')
	Faq.create!(question: 'How quickly can you deliver and install my new oil tank?', answer: 'We have most sizes of tank in stock and ready to deliver. Installation dates are agreed with you at a time to suit you. It generally takes just a few days to install your tank, but can be done within 48 hours if needed.')
	Faq.create!(question: 'Do you use your own staff to install my new oil tank?', answer: 'Yes, we only use our own staff. They are fully trained, professional and very experienced. All our installation engineers are fully OFTEC accredited.')
	Faq.create!(question: 'Is your oil tank and installation work guaranteed?', answer: 'Yes. We install quality oil tanks from leading makers, and every tank has a manufacturers warranty. Installation will be carried out with care by our own OFTEC accredited engineers. In the very unlikely event that a problem arises you can telephone us directly for immediate attention.')
	Faq.create!(question: 'I need a custom oil tank, can you help?', answer: 'Yes. We manufacture our own range of extremely high quality steel oil tanks. If you require a one-off tank to your own specifications please call us and we will be pleased to build it for you.')
	
end