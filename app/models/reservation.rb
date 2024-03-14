class Reservation < ApplicationRecord
  belongs_to :brain
  belongs_to :user

end
