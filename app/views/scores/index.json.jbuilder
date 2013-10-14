json.array!(@scores) do |score|
  json.extract! score, :name, :points
  json.url score_url(score, format: :json)
end
