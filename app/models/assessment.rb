class Assessment < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  has_many :questions, :dependent => :destroy
end
