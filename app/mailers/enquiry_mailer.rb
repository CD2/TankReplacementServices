class EnquiryMailer < ApplicationMailer
  #default from: 'enquiries@XXX.com', to: 'hexmodr@gmail.com'#to: 'mail@unityoccupationalhealth.com'

  def new_enquiry enquiry
    @enquiry = enquiry
    @url = url_for [:admin, enquiry]
    mail subject: 'New Enquiry'
  end


end
