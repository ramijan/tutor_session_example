class TutorSession < ApplicationRecord
  def self.sessions_for_student(student)
    session_ids = TutorSessionUser.where(kind: "Student", user_id: student.id).select(:tutor_session_id)

    session_users_by_session = TutorSessionUser.where(tutor_session_id: session_ids)
      .order(:user_id)
      .group_by(&:tutor_session_id)

    # true student session are those where student is the second user of session
    true_session_ids = session_users_by_session.select{ |_,v| v.second.user_id == student.id }.keys

    TutorSession.where(id: true_session_ids)
  end
end
