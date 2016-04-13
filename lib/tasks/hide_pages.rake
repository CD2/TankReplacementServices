task hide_pages: :environment do
  
  Page.create!(
    name: 'FAQs',
    path: 'faq',
    banner: File.open(File.join(Rails.root, 'seed_images/trs_header_06_faqs.jpeg')),
    catchline: 'If you can\'t find an answer to your question please call our Head Office and we will be pleased to help you.',
    body: '<h1>Frequently Asked Questions</h1>', fake: true)

  Page.find_by(path: 'contact').update({fake: true})

end