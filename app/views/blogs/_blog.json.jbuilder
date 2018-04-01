json.extract! blog, :id, :date, :time, :text, :title, :created_at, :updated_at
json.url blog_url(blog, format: :json)
