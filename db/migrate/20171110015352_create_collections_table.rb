class CreateCollectionsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.string :perfume_name
      t.string :perfunme_maker
      t.integer :user_id
    end
  end
end
