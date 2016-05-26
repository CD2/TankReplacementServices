class EnquiryMailer < ApplicationMailer
  default from: 'enquiries@tankreplacementservices.co.uk', to: 'shane@cd2solutions.co.uk'

  def new_enquiry enquiry
    @enquiry = enquiry
    @url = url_for [:admin, enquiry]
    mail subject: 'New Enquiry'
  end


end
