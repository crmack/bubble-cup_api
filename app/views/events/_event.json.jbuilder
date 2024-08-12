json.extract! event, :id, :name, :points, :created_at, :updated_at
json.url event_url(event, format: :json)
