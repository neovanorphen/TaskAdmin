class Ticket < ActiveRecord::Base

  belongs_to :user

  validates :issue, presence: true,
            length: { maximum: 150 }
  validates :description, presence: true,
            length: { maximum: 150 }


  enum priority: { Low: 1, Medium: 2, High: 3 }



end
