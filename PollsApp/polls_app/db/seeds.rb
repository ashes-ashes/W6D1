# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
  [{ username: 'boywholived' },
  { username: 'albusdumbledore' },
  { username: 'hippogriffluvr' },
  { username: 'levio_sa' },
  { username: 'scabbers0439' },
  { username: 'notthedarklord' },
  { username: 'dracomalfoy' },
  { username: 'padfoot' },
  { username: 'profmcg' },
  { username: 'potionsmaster' },
  { username: 'loonyluvgood' }]
)

Poll.create(
  [{user_id: 2, title: 'important news student questions'},
  {user_id: 6, title: 'not death eater questions'}]
)

Question.create(
  [{poll_id: 1, text: 'What is your favorite color?'},
  {poll_id: 1, text: 'What is your favorite magic spell?'},
  {poll_id: 1, text: 'Do you throw out the wierd Bertie Bots flavor beans?'},
  {poll_id: 2, text: 'What are Harry Potter\'s secret weaknesses?'},
  {poll_id: 2, text: 'Are you interested in joining the dark side?'},
  {poll_id: 2, text: 'How many times a day do you tell someone that your father will hear about this?'}]

)

AnswerChoice.create(
  [{question_id: 1, text: 'red'},
  {question_id: 1, text: 'green'},
  {question_id: 1, text: 'some other color we dont care about'},
  {question_id: 2, text: 'lumose'},
  {question_id: 2, text: 'expelliarmus'},
  {question_id: 2, text: 'a horrible unforgivable curse'},
  {question_id: 2, text: 'Accio'},
  {question_id: 3, text: 'Ew obviously'},
  {question_id: 3, text: 'I would never'},
  {question_id: 4, text: 'teenage angst'},
  {question_id: 4, text: 'being a sad orphan'},
  {question_id: 4, text: 'kryptonite'},
  {question_id: 5, text: 'obviously not!'},
  {question_id: 5, text: 'obviously yes!'},
  {question_id: 6, text: 'once or fewer'},
  {question_id: 6, text: 'eight times or more'}]

)

Response.create(
  [{user_id: 1, answer_choice_id: 3},
  {user_id: 1, answer_choice_id: 5},
  {user_id: 1, answer_choice_id: 9},
  {user_id: 7, answer_choice_id: 2},
  {user_id: 7, answer_choice_id: 6},
  {user_id: 7, answer_choice_id: 8},
  {user_id: 10, answer_choice_id: 10},
  {user_id: 10, answer_choice_id: 14},
  {user_id: 10, answer_choice_id: 15}]




)