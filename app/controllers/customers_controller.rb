class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

      if @customer.save
        redirect_to customers_url, notice: 'Kunde wurde erfolgreich angelegt.'
      else
        render :new
      end
  end

  # PATCH/PUT /customers/1
  def update
      if @customer.update(customer_params)
        redirect_to customers_url, notice: 'Kunde wurde erfolgreich geändert.'
      else
        render :edit
      end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
      redirect_to customers_url, notice: 'Kunde wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:Datev-Id, :name, :displayname, :solution_architect_id, :reseller_id)
    end
end
