json.set! :todo do
  json.extract! @todo, :id, :title, :limit, :status, :created_at, :updated_at
end