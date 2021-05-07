json.extract! user, :id, :name, :points, :email, :phone
json.token @token
json.url user_url(user, format: :json)
