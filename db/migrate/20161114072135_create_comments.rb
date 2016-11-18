class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.integer :article_id

      t.timestamps
    end
  end
end
