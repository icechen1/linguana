french_for_english = Course.find_by_name("French")
french_basic_1 = Skill.find_by(name: "Basics 1", course_id: french_for_english.id)

french_basic_1_1 = Lesson.create!(
  name: "Lesson 1",
  skill_id: french_basic_1.id
)

  mcq1 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    thing_to_translate: "The boy",
    exercise_type: "multiple_choice"
  )

  choice_1_1 = AnswerChoice.create!(
    body: "Le garçon",
    exercise_id: mcq1.id,
    is_correct: true

  )
  choice_1_3 = AnswerChoice.create!(
    body: "L'homme",
    exercise_id: mcq1.id
  )
  choice_1_4 = AnswerChoice.create!(
    body: "La femme",
    exercise_id: mcq1.id
  )


  mcq2 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The girl"
  )
  choice_2_1 = AnswerChoice.create!(
    body: "L'ours",
    exercise_id: mcq2.id,
  )
  choice_2_2 = AnswerChoice.create!(
    body: "La fille",
    is_correct: true,
    exercise_id: mcq2.id
  )
  choice_2_3 = AnswerChoice.create!(
    body: "La cuillère",
    exercise_id: mcq2.id
  )


  mcq3 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The dog"
  )
  choice_3_1 = AnswerChoice.create!(
    body: "Le garçon",
    exercise_id: mcq3.id,
  )
  choice_3_2 = AnswerChoice.create!(
    body: "Le chat",
    exercise_id: mcq3.id
  )

  choice_3_4 = AnswerChoice.create!(
    body: "Le chien",
    is_correct: true,
    exercise_id: mcq3.id
  )


  mcq4 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The mother"
  )
  choice_4_2 = AnswerChoice.create!(
    body: "La mère",
    is_correct: true,
    exercise_id: mcq4.id
  )
  choice_4_3 = AnswerChoice.create!(
    body: "Le gamin",
    exercise_id: mcq4.id
  )
  choice_4_4 = AnswerChoice.create!(
    body: "Le chat",
    exercise_id: mcq4.id
  )


  mcq5 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The man"
  )

  choice_5_1 = AnswerChoice.create!(
    body: "Le garçon",
    exercise_id: mcq5.id,
  )

  choice_5_3 = AnswerChoice.create!(
    body: "L'homme",
    is_correct: true,
    exercise_id: mcq5.id
  )
  choice_5_4 = AnswerChoice.create!(
    body: "La fille",
    exercise_id: mcq5.id
  )

  mcq6 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The baby"
  )

  choice_6_1 = AnswerChoice.create!(
    body: "Le bébé",
    is_correct: true,
    exercise_id: mcq6.id,
  )
  choice_6_3 = AnswerChoice.create!(
    body: "Le garçon",
    exercise_id: mcq6.id
  )
  choice_6_4 = AnswerChoice.create!(
    body: "L'ours",
    exercise_id: mcq6.id
  )

  mcq7 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The bear"
  )

  choice_7_1 = AnswerChoice.create!(
    body: "Le garçon",
    exercise_id: mcq7.id,
  )
  choice_7_2 = AnswerChoice.create!(
    body: "L'ours",
    is_correct: true,
    exercise_id: mcq7.id
  )
  choice_7_3 = AnswerChoice.create!(
    body: "La main",
    exercise_id: mcq7.id
  )

  mcq8 = Exercise.create!(
    lesson_id: french_basic_1_1.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The cat"
  )

  choice_8_1 = AnswerChoice.create!(
    body: "Le chat",
    is_correct: true,
    exercise_id: mcq8.id,
  )
  choice_8_3 = AnswerChoice.create!(
    body: "La femme",
    exercise_id: mcq8.id
  )
  choice_8_4 = AnswerChoice.create!(
    body: "Le chef",
    exercise_id: mcq8.id
  )