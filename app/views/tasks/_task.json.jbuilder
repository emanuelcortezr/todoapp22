json.extract! task, :id, :name, :picture, :created_at, :updated_at
json.url task_url(task, format: :json)
