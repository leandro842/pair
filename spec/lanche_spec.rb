require 'spec_helper'
require 'lanche'

RSpec.describe Lanche do

  context '#tem_ingrediente?' do

    context 'dado que tenho um lanche com apenas uma alface' do
      let(:lanche) { Lanche.new [Ingrediente.new('Alface', 1.25)] }

      context 'se verifico se tem "Alface"' do
        it 'retorno true' do
          expect(lanche.tem_ingrediente?('Alface')).to be_truthy
        end
      end
      
      context 'se verifico se tem "Ovo"' do
        it 'retorno false' do
          expect(lanche.tem_ingrediente?('Ovo')).to be_falsey
        end
      end
    end

  end

  context '#preco' do

    context 'quando recebo uma lista de ingredientes' do
      it 'retorna a somatoria dos precos' do
        lanche = Lanche.new([
          Ingrediente.new('Alface', 1.25),
          Ingrediente.new('Pao', 1.00),
        ])

        expect(lanche.preco).to eq(2.025)
      end
    end

    context 'quando recebo uma outra lista de ingredientes' do
      it 'retorna a somatoria dos precos' do
        lanche = Lanche.new([
          Ingrediente.new('Ovo', 2.25),
          Ingrediente.new('Pao', 1.00),
        ])

        expect(lanche.preco).to eq(3.25)
      end
    end

  end
end
