class CreateExpense < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
    	t.decimal :amount
    	t.string :card
    	t.string :description
    	t.string :transactionType
    	t.date :transactionDate

    	t.references :expense_sms
    end
  end
end
