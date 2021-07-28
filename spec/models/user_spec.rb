require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "社員番号、メール、パスワードがある場合、有効である" do
     user = FactoryBot.build(:user)
     # オブジェクトをexpectに渡した時に、有効である(be valid)という意味になる
     expect(user).to be_valid
  end

  it "社員番号がない場合、無効である" do
     user = FactoryBot.build(:user, employee_number: nil)
     user.valid?
     # valid?メソッドでfalseであれば、user.errosでどんなerrorを持っているか返してくれる
　　 #"can't be blank"というエラーを含んでいる(include)しているはずという記述
     expect(user.errors[:employee_number]).to include("can't be blank")
  end

  it "メールアドレスがない場合、無効である"  do
       user = FactoryBot.build(:user, email: nil)
       user.valid?
       expect(user.errors[:email]).to include("can't be blank")
  end

  it "重複したメールアドレスの場合、無効である"do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.build(:user)
    user2.valid?
    expect(user2.errors[:email]).to include("has already been taken")
  end

  it "パスワードがない場合、無効である" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
end
