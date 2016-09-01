class Ticket < ActiveRecord::Base

  belongs_to :user

  enum priority: { Low: 1, Medium: 2, High: 3 }


end
