class AddUseridToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :userid, :integer
  end
end
