class QuestionChat < ApplicationRecord
  belongs_to :question, :dependent => :destroy
end
