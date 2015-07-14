class Lanche
  def initialize(ingredientes)
    @ingredientes = ingredientes
  end

  def preco
    preco = @ingredientes.reduce(0) { |a, e| a + e.preco }
    
    preco *= 0.9 if tem_ingrediente?('Alface')

    preco
  end

  def tem_ingrediente?(nome_ingrediente)
    @ingredientes.any? do |i|
      i.nome == nome_ingrediente
    end
  end
end
