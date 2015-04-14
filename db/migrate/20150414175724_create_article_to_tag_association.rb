class CreateArticleToTagAssociation < ActiveRecord::Migration
  def change
    create_table :article_to_tag_associations do |t|
    	t.integer :article_id
    	t.integer :tag_id
    end
  end
end
