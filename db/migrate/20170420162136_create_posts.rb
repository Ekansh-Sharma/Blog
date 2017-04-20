class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.json :post
      t.timestamps null: false
    end
  end
end
