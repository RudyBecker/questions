class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :question, foreign_key: true
      t.string :responder
      t.string :response

      t.timestamps
    end
  end
end
