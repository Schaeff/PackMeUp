json.array!(@u_suitcases) do |u_suitcase|
  json.extract! u_suitcase, :id, :user_id, :country_id, :weather
  json.url u_suitcase_url(u_suitcase, format: :json)
end
