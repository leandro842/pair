require 'spec_helper'
require 'lanche'

RSpec.describe Lanche do
  context '#initialize' do
    context 'quando chamo passando uma lista valida' do
      it 'instancia um lanche' do

        ingredientes = [
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Ovo', 2.25),
          Ingrediente.new('Pao', 1.00)
        ]

        lanche = Lanche.new(ingredientes)

        expect(lanche).to_not be_nil
        expect(lanche).to be_a Lanche
      end
    end
  end

  context '#preco' do
    context 'quando chamo passando uma lista valida' do
      it 'instancia um lanche' do
        
        ingredientes = [
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Ovo', 2.25),
          Ingrediente.new('Pao', 1.00),
          Ingrediente.new('Pao', 1.00)
        ]

        lanche = Lanche.new(ingredientes)

        expect(lanche.preco).to eq(4.95)
      end
    end
  end
end
