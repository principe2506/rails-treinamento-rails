# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed.rb

# Cria 30 contatos de exemplo
30.times do |i|
    Contato.create(
      nome: "Contato #{i+1}",
      email: "contato#{i+1}@exemplo.com",
      observacao: "Observação do contato #{i+1}",
      created_at: Time.now,
      updated_at: Time.now
    )
  end
  