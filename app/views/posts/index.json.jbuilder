json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :publisher_id, :title, :caption, :content, :publication_date, :image, :status
  json.url post_url(post, format: :json)
end
