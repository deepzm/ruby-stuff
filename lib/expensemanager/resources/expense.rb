
require 'json'

require 'expensemanager/model/expense'
require 'expensemanager/resources/jsonresource'

module ExpenseManager
	module Resources
		class Expense < JsonResource
			def allowed_methods
		    	["GET", "POST"]
		  	end

		  	def to_json
		    	{
		      		:expenses => Model::Expense.all
		    	}.to_json
		  	end

		  	def create_path
		    	@id = Model::Expense.next_id
		    	"/orders/#@id"
		  	end

		  	def post_is_create?
			    true
		  	end

			private
		  	def from_json
			    order = Model::Expense.new(params).save(@id)
		  	end
		end
	end
end