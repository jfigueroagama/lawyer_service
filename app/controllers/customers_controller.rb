class CustomersController < ApplicationController
  PAGE_SIZE=10

  def index
    # We will set the page size to 10 as default and look for the new page
    # parameter which indicates the page size that the user wants or 0
    @page = (params[:page] || 0).to_i
    if params[:keywords].present?
      @keywords = params[:keywords]
      customer_search_term = CustomerSearchTerm.new(@keywords)
      @customers = Customer.where(customer_search_term.where_clause,
                                  customer_search_term.where_arg).order(customer_search_term.order).
                                  offset(PAGE_SIZE * @page).limit(PAGE_SIZE)
      # We use PAGE_SIZE and @page to construct parameters to the offset and limit ActiveRecord methods
    else
      @customers = []
    end

    # We need to use the respond_to method to indicate that we will use JSON and then use json. Rails will handle
    # change our Customers to JSON format
    respond_to do |format|
      format.html {}
      format.json { render json: @customers }
    end

  end
end
