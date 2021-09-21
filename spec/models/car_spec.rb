require 'rails_helper'
describe 'Car model function', type: :model do
  context 'Validation test' do
    it 'It ensures name is present' do
car = Car.new(name: '', color: 'Failure test', weight:'failed test', price:'failed test', age:'9').save
      expect(car).to eq(false)
    end
    it 'It ensures color is present' do
      car = Car.new(name: 'Toyota', color: '', weight:'failed test', price:'failed test', age:'8').save
      expect(car).to eq(false)
    end
    it 'It ensures weigh is present' do
    car = Car.new(name: 'Toyota', color: 'white', weight:'', price:'failed test', age:'6').save
      expect(car).to eq(false)
    end
    it 'It ensures price is present' do
      car = Car.new(name: 'Toyota', color: 'black', weight:'750', price:'', age:'7').save
      expect(car).to eq(false)
    end
    it 'It ensures age is present' do
      car = Car.new(name: 'nissan', color: 'Brown', weight:'850', price:'7000000', age:'').save
      expect(car).to eq(false)
    end
    it 'Validation passes' do
    car = Car.new(name: 'mercedes', color: 'white', weight:'950', price:'6000000', age:'5').save

    end
  end
  
end
