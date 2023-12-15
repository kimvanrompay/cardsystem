json.extract! card, :id, :number, :balance, :created_at, :updated_at
json.url card_url(card, format: :json)
