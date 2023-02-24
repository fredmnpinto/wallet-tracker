json.extract! transaction, :id, :name, :amount, :paid_at, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
