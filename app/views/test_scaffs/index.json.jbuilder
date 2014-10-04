json.array!(@test_scaffs) do |test_scaff|
  json.extract! test_scaff, :id
  json.url test_scaff_url(test_scaff, format: :json)
end
