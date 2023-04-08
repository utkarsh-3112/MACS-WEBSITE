json.extract! event, :id, :date_time, :status, :name, :organizers, :coordinator, :sponsors, :event_type, :created_at, :updated_at
json.url event_url(event, format: :json)
