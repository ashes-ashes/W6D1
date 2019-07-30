# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :string
#  poll_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  validates :text, presence: true

  has_many :answer_choices,
    foreign_key: :question_id,
    class_name: :AnswerChoice

  belongs_to :poll,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :responses,
    through: :answer_choices,
    source: :responses

  def results_nplusone
    results_hash = Hash.new(0)
    self.answer_choices.each do |choice|
      results_hash[choice.text] = choice.responses.count
    end
    results_hash
  end 

  def results_includes
    results_hash = Hash.new(0)
    choices = self.answer_choices.includes(:responses)
    choices.each do |choice|
      results_hash[choice.text] = choice.responses.length
    end
    results_hash
  end

  def results
    
  end

end
