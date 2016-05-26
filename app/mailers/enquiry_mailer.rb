class EnquiryMailer < ApplicationMailer
  default from: 'enquiries@tankreplacementservices.co.uk', to: 'info@tankreplacementservices.co.uk'

  def new_enquiry enquiry
    @enquiry = enquiry
    @url = url_for [:admin, enquiry]
    mail subject: 'New Enquiry'
  end


end
