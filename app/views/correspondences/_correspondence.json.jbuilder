json.extract! correspondence, :id, :user_id, :category_id, :titulo, :descripcion, :inicio, :fin, :estado, :created_at, :updated_at
json.url correspondence_url(correspondence, format: :json)