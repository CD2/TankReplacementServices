require 'test_helper'

class EnquiriesMailerTest < ActionMailer::TestCase
  test "send_enquiry" do
  	enquiry = enquiries(:enquiry_one)
    mail = EnquiriesMailer.send_enquiry(enquiry)
    assert_equal "Enquiry", mail.subject
    assert_equal [CONFIG['enquiries_to']], mail.to
    assert_equal [enquiry.email], mail.from
  end

end
