class CustomerContactsController < ApplicationController
  before_action :set_customer_contact, only: [:show, :edit, :update, :destroy]

  # GET /customer_contacts
  # GET /customer_contacts.json
  def index
    @customer_contacts = CustomerContact.all
  end

  # GET /customer_contacts/1
  # GET /customer_contacts/1.json
  def show
  end

  # GET /customer_contacts/new
  def new
    @customer_contact = CustomerContact.new
  end

  # GET /customer_contacts/1/edit
  def edit
  end

  # POST /customer_contacts
  def create
    @customer_contact = CustomerContact.new(customer_contact_params)

      if @customer_contact.save
        redirect_to @customer_contact, notice: 'Customer contact was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /customer_contacts/1
  def update
      if @customer_contact.update(customer_contact_params)
        redirect_to @customer_contact, notice: 'Customer contact was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /customer_contacts/1
  def destroy
    @customer_contact.destroy
      redirect_to customer_contacts_url, notice: 'Customer contact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_contact
      @customer_contact = CustomerContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_contact_params
      params.require(:customer_contact).permit(:firstname, :lastname, :function, :title_id, :customer_id, :phone, :email, :birthday)
    end
end
