class ContatoController < ApplicationController
  def index
  end

  def cadastrar
      nome = params["nome"]
      email = params["email"]
      observacao = params["observacao"]
      
      if nome.blank?
          flash["error"] = "O nome é obrigatório"
          return render "index"
      end

      if email.blank?
          flash["error"] = "O email é obrigatório"
          return render "index"
      end

      Contato.create!(nome: nome, email:email, observacao:observacao)

      flash["success"] = "Contato cadastrado com sucesso"
      redirect_to "/"
  end
end