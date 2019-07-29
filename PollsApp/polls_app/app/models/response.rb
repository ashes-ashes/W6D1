# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :bigint
#  answer_choice_id :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord

  validate :not_duplicate_response

  belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question


  def sibling_responses
    self.question.responses.where.not('responses.id = ?', self.id)
  end

  def respondent_already_answered?
    self.sibling_responses.exists?(user_id: self.user_id)
  end

  private
  def not_duplicate_response
    if respondent_already_answered?
      errors[:respondent] << 'respondent already answered this question' 
    end
  end

end
