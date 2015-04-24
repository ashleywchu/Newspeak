class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.text :body
			t.integer :user_id
			t.integer :article_id
			t.integer :rep
			t.timestamps null: false
      t.integer :commentable_id
      t.string :commentable_type
      t.string :ancestry
		end
    add_index :comments, :ancestry
	end
end