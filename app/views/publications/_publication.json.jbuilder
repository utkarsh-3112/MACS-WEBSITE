json.extract! publication, :id, :name, :publish_in, :reigon, :url, :year, :created_at, :updated_at
json.url publication_url(publication, format: :json)
