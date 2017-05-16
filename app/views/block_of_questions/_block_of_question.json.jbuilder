json.extract! block_of_question, :id, :text, :option, :question_id, :created_at, :updated_at
json.url block_of_question_url(block_of_question, format: :json)
