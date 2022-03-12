

tutor = User.where(name: 'Mr. Tutor', type: 'Tutor').first_or_create!
student1 = User.where(name: 'Rami', type: 'Student').first_or_create!
student2 = User.where(name: 'Neeraj', type: 'Student').first_or_create!

while TutorSession.count < 3
  TutorSession.create!
end


# Session 1
session = TutorSession.first
TutorSessionUser.where(tutor_session: session, user: tutor, kind: 'Tutor').first_or_create!
TutorSessionUser.where(tutor_session: session, user: student1, kind: 'Student').first_or_create!

# Session 2
session = TutorSession.second
TutorSessionUser.where(tutor_session: session, user: tutor, kind: 'Tutor').first_or_create!
TutorSessionUser.where(tutor_session: session, user: student2, kind: 'Student').first_or_create!

# Session 3
session = TutorSession.third
TutorSessionUser.where(tutor_session: session, user: tutor, kind: 'Tutor').first_or_create!
TutorSessionUser.where(tutor_session: session, user: student1, kind: 'Student').first_or_create!
TutorSessionUser.where(tutor_session: session, user: student2, kind: 'Student').first_or_create!
