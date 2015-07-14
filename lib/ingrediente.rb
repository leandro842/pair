# -----------------------------------------------------------------------------
# Ingrediente
#   - precos: - Ovo                  - R$ 2,25
#             - Alface               - R$ 1,25
#             - Pao                  - R$ 1,00
#             - Bacon                - R$ 2,00
#             - Hamburguer de Carne  - R$ 3,00
#             - Hamburguer de Frango - R$ 2,70
#             - Queijo               - R$ 1,50
# -----------------------------------------------------------------------------
class Ingrediente
  attr_reader :nome, :preco

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end
