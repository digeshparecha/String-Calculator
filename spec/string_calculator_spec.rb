require_relative '../string_calculator'

describe StringCalculator do
  describe '#add' do
    context 'when input is empty or nil' do
      it 'should return 0' do
        expect(subject.add('')).to eq(0)
        expect(subject.add(nil)).to eq(0)
      end
    end

    context 'when input is non-empty comma separated string' do
      it 'should return sum' do
        expect(subject.add('1')).to eq(1)
        expect(subject.add('1,2')).to eq(3)
      end
    end
  end
end
