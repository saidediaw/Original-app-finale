require 'rails_helper'
describe 'Car model function', type: :model do
  context 'Validation test' do
    it 'It ensures title is present' do
      car = Car.new(title: '', content: 'fail test').save
      expect(car).to eq(false)
    end
    it 'It ensures content is present' do
      car = Car.new(title: 'title', content: '').save
      expect(car).to eq(false)
    end
    it 'Validation passes' do
      car = Car.new(title: 'title', content: 'pass test', deadline: '2021/09/24', status: 'Complete', priority: 'Low').save
      expect(car).to eq(true)
    end
  end
  describe 'Search function' do
    context 'When fuzzy search of title is performed by scope method' do
      it "Cars containing search keywords are narrowed down" do
        Car.create(title: "title1", content: "content1", deadline: "2021/09/24", status:"Complete", priority: "Low")
        expect(Car.search_title("title1").count).to eq 1
      end
    end
    context 'When fuzzy search of status is performed by scope method' do
      it "Cars containing status are narrowed down" do
        Car.create(title: "title1", content: "content1", deadline: "2021/09/24", status:"Complete", priority: "Low")
        expect(Car.search_status("Complete").count).to eq 1
      end
    end
    context 'When fuzzy search of both title and status is performed by scope method' do
      it "Cars containing search keywords and status are narrowed down" do
        Car.create(title: "title1", content: "content1", deadline: "2021/09/24", status:"Complete", priority: "Low")
        expect(Car.search_title("title1").count).to eq 1
        expect(Car.search_status("Complete").count).to eq 1
      end
    end
  end
end
