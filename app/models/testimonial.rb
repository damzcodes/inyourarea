class Testimonial < ApplicationRecord
  belongs_to :campaign
  belongs_to :constituency
end
