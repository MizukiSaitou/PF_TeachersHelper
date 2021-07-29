require 'rails_helper'

RSpec.describe User, type: :model do
   describe 'バリデーションのテスト' do
    subject { user.valid? }

    let!(:user) { create(:user) }

    context 'employee_numberカラム' do
      it '空欄でないこと' do
        user.employee_number = ''
        is_expected.to eq false
      end
    end
   end
end