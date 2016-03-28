# Preview all emails at http://localhost:3000/rails/mailers/enquiry_mailer
class EnquiryMailerPreview < ActionMailer::Preview

  def new_enquiry
    EnquiryMailer.new_enquiry Enquiry.create!(name: 'Joe Blogs', email: 'test@email.com', body: "This is the body for the test enquiry.\r\nI have an enquiry.\r\nCheers")
    # EnquiryMailer.new_enquiry Enquiry.find(134)
  end


end
