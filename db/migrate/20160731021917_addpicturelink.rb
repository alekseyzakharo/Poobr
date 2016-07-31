class Addpicturelink < ActiveRecord::Migration
  def change
      add_column :postings, :image_id, :string
  end
end
