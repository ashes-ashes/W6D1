class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
    t.references :user, index: true, foreign_key: true
    t.references :answer_choice, index: true, foreign_key: true
    t.timestamps
    end
  end
end
