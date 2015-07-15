class Lanche
  def initialize(ingredientes)
    @ingredientes = ingredientes
  end

  def preco

    preco = 0

    temporaria_para_entender = @ingredientes.select { |i| i.nome == 'Pao' }

    quantidade_de_paes = temporaria_para_entender.size

    @ingredientes.each do |i|
      preco += i.preco
    end

    preco = preco * 0.9 if quantidade_de_paes == 2

    preco
  end
end
