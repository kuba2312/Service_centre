json.extract! post, :id, :body, :employee_id, :topic_id, :created_at, :updated_at
json.url post_url(post, format: :json)
