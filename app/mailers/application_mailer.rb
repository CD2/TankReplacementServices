class ApplicationMailer < ActionMailer::Base
  default from: CONFIG['enquiries_from']
  layout 'mailer'
end
