json.extract! event_instance, :id, :event_id, :is_tiebreaker, :created_at, :updated_at
json.url event_instance_url(event_instance, format: :json)
