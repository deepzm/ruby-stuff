
module ExpenseManager 
	module Model
		class Expense
		  attr_accessor :id, :amount, :date, :message

		  DB = {}

		  def self.all
		    DB.values
		  end

		  def self.find(id)
		    DB[id]
		  end

		  def self.next_id
		    DB.keys.max.to_i + 1
		  end

		  def self.delete_all
		    DB.clear
		  end

		  def to_json(options = {})
		    %{{"amount":"#@amount", "message":"#@message" "date":"#@date", "id":#@id}}
		  end

		  def initialize(attrs = {})
		    attrs.each do |attr, value|
		      send("#{attr}=", value) if respond_to?(attr)
		    end
		  end

		  def save(id = nil)
		    self.id = id || self.class.next_id
		    DB[self.id] = self
		  end

		  def destroy
		    DB.delete(id)
		  end
		end
	end
end