json.set! :todo do
  json.extract! @todo, :id, :title, :finished, :created_at, :updated_at
end