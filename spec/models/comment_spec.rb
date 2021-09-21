require 'rails_helper'
describe 'Comment model function', type: :model do
  describe 'Comment model function' do
    context 'Comment model function' do
      it 'Comment model function' do
        user = FactoryBot.create(:user)
        car = FactoryBot.create(:car, user_id: user.id)
        comment = Comment.create( comment: "", car_id: car.id )
        expect(comment).not_to be_valid
      end
    end
    context 'Comment model function' do
      it 'Comment model function' do
        user = FactoryBot.create(:user)
        car = FactoryBot.create(:car, user_id: user.id)
        comment = Comment.create( comment: "Comment model function" , car_id: car.id )
        expect(comment).to be_valid
      end
    end
  end
end
