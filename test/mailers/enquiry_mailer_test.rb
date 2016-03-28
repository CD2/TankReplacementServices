require 'test_helper'

class EnquiryMailerTest < ActionMailer::TestCase

  test "new enquiry" do
    # Send the email, then test that it got queued
    enquiry = enquiries(:enquiry_one)
    email = EnquiryMailer.new_enquiry(enquiry).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal ['enquiries@unityoccupationalhealth.com'], email.from
    assert_equal ['hexmodr@gmail.com'], email.to
    assert_equal 'New Enquiry', email.subject
  end

end
