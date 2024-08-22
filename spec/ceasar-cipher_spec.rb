require_relative '../lib/ceasar-cipher.rb'

describe '#caesar_cipher' do
  context 'when translating one word' do
    let(:one_word) { 'Odin' }

    it 'works with small positive shift' do
      expect(caesar_cipher(one_word, 5)).to eq('Tins')
    end

    it 'works with small negative shift' do
      expect(caesar_cipher(one_word, -5)).to eq('Jydi')
    end

    it 'works with large positive shift' do
      expect(caesar_cipher(one_word, 74)).to eq('Kzej')
    end

    it 'works with large negative shift' do
      expect(caesar_cipher(one_word, -55)).to eq('Lafk')
    end
  end

  context 'when translating a phrase with punctuation' do
    let(:punctuation_phrase) { 'Hello, World!' }

    it 'works with small positive shift' do
      expect(caesar_cipher(punctuation_phrase, 9)).to eq('Qnuux, Fxaum!')
    end

    it 'works with small negative shift' do
      expect(caesar_cipher(punctuation_phrase, -5)).to eql('Czggj, Rjmgy!')
    end

    it 'works with large positive shift' do
      expect(caesar_cipher(punctuation_phrase, 74)).to eql('Dahhk, Sknhz!')
    end

    it 'works with large negative shift' do
      expect(caesar_cipher(punctuation_phrase, -55)).to eql('Ebiil, Tloia!')
    end
  end
end