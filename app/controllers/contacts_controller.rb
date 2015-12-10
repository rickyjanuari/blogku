class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		elsif 
			flash.now[:error] = 'Cannont send message.'
			render :new
		end
				
	end
end
