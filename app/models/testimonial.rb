class Testimonial < ActiveRecord::Base

  default_scope -> { order date: :desc }

end
