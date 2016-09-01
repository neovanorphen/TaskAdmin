class HomeController < ApplicationController

  def index
    @tickets = Ticket.order(priority: :desc,created_at: :asc)
  end
end
