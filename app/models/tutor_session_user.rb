class TutorSessionUser < ApplicationRecord
  belongs_to :user
  belongs_to :tutor_session
end
