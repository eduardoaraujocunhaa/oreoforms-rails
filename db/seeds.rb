User.create!([
  {email: "teste@teste.com", encrypted_password: "$2a$11$63ckaTmJ5CAaZxQ.oNdS9ugB9nMaTpJxeMFfiwV.dhNuh/5AHfZby", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: nil, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, name: nil, cpf: nil, provider: nil, uid: nil}
])
BlockOfQuestion.create!([
  {option: "1ª Opção Múltipla Escolha", question_id: 1},
  {option: "2ª Opção Múltipla Escolha", question_id: 1},
  {option: "3ª Opção Múltipla Escolha", question_id: 1},
  {option: "1ª Opção Escolha Um", question_id: 3},
  {option: "2ª Opção Escolha Um", question_id: 3},
  {option: "3ª Opção Escolha Um", question_id: 3},
  {option: "1ª Opção Ranking", question_id: 4},
  {option: "2ª Opção Ranking", question_id: 4},
  {option: "3ª Opção Ranking", question_id: 4},
  {option: "4ª Opção Ranking", question_id: 4},
  {option: "5ª Opção Ranking", question_id: 4},
  {option: "1ª Opção Numérica", question_id: 5},
  {option: "2ª Opção Numérica", question_id: 5},
  {option: "3ª Opção Numérica", question_id: 5},
  {option: "4ª Opção Numérica", question_id: 5}
])
KindOfQuestion.create!([
  {kind_name: "Simples"},
  {kind_name: "Múltipla Escolha"},
  {kind_name: "Escolha Um"},
  {kind_name: "Ranking"},
  {kind_name: "Numérica"}
])
Question.create!([
  {enunciate: "Múltipla Escolha 3 Opções?", n_options: 3, questionary_id: 1, kind_of_question_id: 2},
  {enunciate: "Simples?", n_options: 1, questionary_id: 1, kind_of_question_id: 1},
  {enunciate: "Escolha Um 3 Opções?", n_options: 3, questionary_id: 1, kind_of_question_id: 3},
  {enunciate: "Ranking 5 Opções:", n_options: 5, questionary_id: 1, kind_of_question_id: 4},
  {enunciate: "Numérica 4 Opções:", n_options: 4, questionary_id: 1, kind_of_question_id: 5}
])
Questionary.create!([
  {url: "b63e17496cb534a4", name: "Primeiro Form Criado", user_id: 1},
  {url: "5e03b0690ee9bc5f", name: "Segundo Form Criado", user_id: 1}
])
