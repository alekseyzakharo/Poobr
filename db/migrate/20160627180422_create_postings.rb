class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title
      t.boolean :infant
      t.boolean :handicap
      t.boolean :shower

      t.timestamps null: false
    end
  end
end
