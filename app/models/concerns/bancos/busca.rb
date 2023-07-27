module Bancos
    module Busca
        extend ActiveSupport::Concern
        included do
            scope :by_nome, ->(nome) { where("lower(nome) like ?", "%#{nome.downcase}%") if nome.present? }
            scope :by_localizacao, ->(localizacao) { where("lower(localizacao) like ?", "%#{localizacao.downcase}%") if localizacao.present? }
            scope :by_ano_fundacao, ->(ano_fundacao) { where("ano_fundacao::text like ?", "%#{ano_fundacao}%") if ano_fundacao.present? }
            scope :by_numero_agencias, ->(numero_agencias) { where("numero_agencias::text like ?", "%#{numero_agencias}%") if numero_agencias.present? }
            scope :by_email, ->(email) { where("lower(email) like ?", "%#{email.downcase}%") if email.present? }
        end
    end
end