json.extract! contacto, :id, :nome, :telefone, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
