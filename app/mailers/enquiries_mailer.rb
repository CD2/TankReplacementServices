class EnquiriesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiries_mailer.send_enquiry.subject
  #
  def send_enquiry(enquiry)
  	@enquiry = enquiry

    mail to: CONFIG['enquiries_to'], subject: "Enquiry", from: enquiry.email
  end
end
