
require 'json'

require 'expensemanager/model/expense'
require 'expensemanager/resources/json_resource'

module ExpenseManager
	module Resources
		class ExpenseSMS < JsonResource
			def allowed_methods
		    	["GET", "PUT"]
		  	end

		  	def to_json
		    	{
		      		:sms => Model::ExpenseSMS.all
		    	}.to_json
		  	end


		  	def process_post
		  		Model::ExpenseSMS.create(params)
		  		true
		  	end

		  	def from_json
		  		sms = Model::ExpenseSMS.create(params)
		  		response.body = sms.to_json
		  		200
		  	end

		end
	end
end