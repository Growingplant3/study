json.extract! payment, :id, :user_id, :input_date, :category, :money, :created_at, :updated_at
json.url payment_url(payment, format: :json)
