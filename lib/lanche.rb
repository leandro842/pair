class Lanche
  def initialize(ingredientes)
    @ingredientes = ingredientes
  end

  def preco
    @preco = 0
    @ingredientes.each { |i| @preco += i.preco }
    promocao
  end

  def promocao
    if tem_promocao_hamburguer?
      puts 'Hamburguer ------->>>>>>>>>'
      @preco -= 3
    elsif tem_promocao_paes?
      puts "Pao ---------> preco"
      @preco *= 0.9
    end
  end

  private
  def tem_promocao_paes?
    @ingredientes.select { |i| i.nome == 'Pao' }.size == 2
  end

  def tem_promocao_hamburguer?
    @ingredientes.select { |i| i.nome == 'Hamburguer de Carne' }.size == 2
  end
end