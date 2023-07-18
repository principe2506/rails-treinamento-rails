json.extract! banco, :id, :nome, :localizacao, :ano_fundacao, :numero_agencias, :email, :obs, :created_at, :updated_at
json.url banco_url(banco, format: :json)
