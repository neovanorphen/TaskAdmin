class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index

    if current_user.admin?
      @tickets = Ticket.all
    else
      @tickets = Ticket.where("user_id = ?", current_user.id)
    end

    respond_with(@tickets)
  end

  def show
    respond_with(@ticket)
  end

  def new
    @ticket = Ticket.new
    respond_with(@ticket)
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user_id= current_user.id
    flash[:notice] = 'Ticket was successfully created.' if @ticket.save
    respond_with(@ticket)
  end

  def update
    flash[:notice] = 'Ticket was successfully updated.' if @ticket.update(ticket_params)
    respond_with(@ticket)
  end

  def destroy
    @ticket.destroy
    respond_with(@ticket)
  end

  # GET /tickets/1/review
  def review
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  # PATCH /tickets/1/review_update
  def review_update
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      @ticket.update_attribute(:priority, params[:ticket][:priority])
      format.html { redirect_to @ticket, notice: 'Ticket Reviewed.' }
    end
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:issue, :description, :priority, :user_id)
    end
end
