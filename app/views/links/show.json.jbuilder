json.extract! @link, :id, :title, :url, :created_at, :updated_at
json.self link_url(@link, format: :json)
