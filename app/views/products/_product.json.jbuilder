json.extract! product, :id, :type, :description, :price_product, :created_at, :updated_at
json.url product_url(product, format: :json)