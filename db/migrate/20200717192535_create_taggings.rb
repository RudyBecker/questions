class CreateTaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :taggings do |t|
      t.references :response, foreign_key: true
      t.string :tag

      t.timestamps
    end
  end
end
