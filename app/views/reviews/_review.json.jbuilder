json.extract! review, :id, :title, :rating, :body, :media, :user_id, :created_at, :updated_at
json.url review_url(review, format: :json)
json.media url_for(review.media)
