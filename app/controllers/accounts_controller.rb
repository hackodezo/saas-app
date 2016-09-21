class AccountsController < ApplicationController
   def new
      @account = Account.new
   end

   def create
      @account = Account.new(account_params)
      if @account.save
         redirect_to root_path, notice: 'Signed up successfully'
      else
         render 'new', alert: 'Something Went Wrong, Please Try Again'
      end
   end

   private

   def account_params
      params.require(:account).permit(:subdomain)
   end
end