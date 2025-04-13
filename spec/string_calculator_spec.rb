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
        expect(subject.add('1,2,3,4')).to eq(10)
      end
    end

    context 'when input is has \n with comma' do
      it 'should return sum' do
        expect(subject.add('1')).to eq(1)
        expect(subject.add("1\n2")).to eq(3)
        expect(subject.add("1,2\n3,4")).to eq(10)
      end
    end
    
    context 'when input has delimiter' do
      it 'should return sum' do
        expect(subject.add('1')).to eq(1)
        expect(subject.add("//?\n1?2")).to eq(3)
        expect(subject.add("//;\n1;2;3;4")).to eq(10)
      end
    end

    contex 'when input has' do
      contex 'single negative number' do
        it 'should retun error message' do
          expect(subject.add("1\n-2")).to eq(3)
          expect(subject.add("//;\n1;2-3;4")).to eq(10)
        end
      end

      contex 'more than more negative number' do
        it 'should retun error message with negative numbers' do
          expect(subject.add("1\n-2\n-3\n-4")).to eq(3)
          expect(subject.add("//;\n1;2-3;4;-5;6;-7")).to eq(10)
        end
      end
    end
  end
end
