# Preview all emails at http://localhost:3000/rails/mailers/enquiries_mailer
class EnquiriesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiries_mailer/send_enquiry
  def send_enquiry
  	enquiry = enquires(:one)

    EnquiriesMailer.send_enquiry(enquiry)
  end

end
