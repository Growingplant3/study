json.extract! payment, :id, :date, :classification, :money, :created_at, :updated_at
json.url payment_url(payment, format: :json)
