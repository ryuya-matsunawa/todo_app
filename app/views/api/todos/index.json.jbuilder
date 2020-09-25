json.set! :todos do
  json.array! @todos do |todo|
    json.extract! todo, :id, :title, :limit, :status, :created_at, :updated_at
  end
end