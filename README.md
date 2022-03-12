# README

```
rails db:create
rails db:migrate
rails db:seed
```

Check seeds.rb for the scenario.   One tutor, two students, three tutoring sessions.   First session is student 1, second session is student 2 and third session has both students (student 1 is the true student)

`TutorSession.sessions_for_student(student)` returns two sessions for student 1 and one session for student 2
