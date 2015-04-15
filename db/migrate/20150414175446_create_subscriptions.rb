class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
    	t.integer :author_id
    	t.integer :reader_id
    	t.timestamps null: false
    end
  end
end
