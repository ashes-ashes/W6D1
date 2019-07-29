class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.references :question, index: true, foreign_key: true
      t.string :text
      t.timestamps
    end
  end
end
