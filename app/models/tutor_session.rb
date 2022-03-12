class TutorSession < ApplicationRecord
  def self.sessions_for_student(student)
    student_session_ids = TutorSessionUser.where(kind: "Student", user_id: student.id).pluck(:tutor_session_id)
    true_session_ids = TutorSessionUser.where(tutor_session_id: student_session_ids).order(:user_id).group_by(&:tutor_session_id).select do |k,v|
      v.second.user_id == student.id
    end.keys
    where(id: true_session_ids)
  end
end
