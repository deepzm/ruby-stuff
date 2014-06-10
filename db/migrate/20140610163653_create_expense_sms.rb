class CreateExpenseSms < ActiveRecord::Migration
  def change
    create_table :expense_sms do |t|
    	t.string :from
    	t.string :message

    	t.timestamps
    end
  end
end
