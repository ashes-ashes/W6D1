class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
