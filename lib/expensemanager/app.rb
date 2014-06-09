require 'webmachine/adapters/rack'

require 'expensemanager/resources/expense'


module ExpenseManager
  Application = Webmachine::Application.new do |app|
    app.configure do |config|
      config.adapter = :Rack
    end

    app.routes do
      add ["expenses"], Resources::Expense
      # add ["expenses", :id], Resources::Expense
      add ['trace', '*'], Webmachine::Trace::TraceResource
    end
  end

end