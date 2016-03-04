class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find_by(params[:customer])
  end

  def index
    @customer = Customer.find_by(params[:customer])
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "Account Created"
      redirect_to index_customer_session_path
    end
  end

  def destroy
    @customer = Customer.find_by(params[:customer])
    @customer.destroy
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |customer_params|
      customer_params.permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end
  end

end
