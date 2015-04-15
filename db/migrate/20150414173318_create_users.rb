class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name
			t.string :email
			t.integer :article_rep
			t.integer :comment_rep
			t.integer :comment_id
			t.timestamps null: false
		end
	end
end
