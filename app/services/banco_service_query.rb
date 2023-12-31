class BancoServiceQuery
    
    def self.busca_por_parametro(params = {})
        bancos = Banco.all
        bancos = bancos.by_nome(params[:nome].downcase) if params[:nome].present?
        bancos = bancos.by_localizacao(params[:localizacao]) if params[:localizacao].present?
        bancos = bancos.by_numero_agencias(params[:numero_agencias]) if params[:numero_agencias].present?
        bancos = bancos.by_ano_fundacao(params[:ano_fundacao]) if params[:ano_fundacao].present?
        bancos = bancos.by_email(params[:email].downcase) if params[:email].present?
        bancos = bancos.by_obs(params[:obs].downcase) if params[:obs].present?

        bancos = bancos.where("ano_fundacao >= ?", params[:ano_ini]) if params[:ano_ini].present? 
        bancos = bancos.where("ano_fundacao <= ?", params[:ano_fim] )if params[:ano_fim].present? 

        #bancos = bancos.where("ano_fundacao between ? and ?", params[:ano_ini], params[:ano_fim]) if params[:ano_ini].present? && params[:ano_fim].present?
        
        if params[:ids].present?
            array_ids = params[:ids].split(",").map{|s| s.to_i}.find_all{|n| n > 0} rescue []
            bancos = bancos.where(id: array_ids)
        end

        bancos 
    end
end