class AddFundsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :funds, :integer
  end
end
