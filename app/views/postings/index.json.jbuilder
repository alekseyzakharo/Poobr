json.array!(@postings) do |posting|
  json.extract! posting, :id, :latitude, :longitude, :address, :description, :title, :infant, :handicap, :shower
  json.url posting_url(posting, format: :json)
end
