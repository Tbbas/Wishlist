json.extract! wish_list, :id, :name, :description, :created_at, :updated_at
json.url wish_list_url(wish_list, format: :json)