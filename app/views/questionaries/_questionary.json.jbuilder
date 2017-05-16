json.extract! questionary, :id, :url, :nome, :user_id, :created_at, :updated_at
json.url questionary_url(questionary, format: :json)
