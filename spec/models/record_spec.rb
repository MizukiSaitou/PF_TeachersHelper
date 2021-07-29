require 'rails_helper'

RSpec.describe Record, type: :model do

  describe 'アソシエーションのテスト' do
    context 'Studentモデルとの関係' do
      it 'N:1の関係になっている' do
        expect(Record.reflect_on_association(:student).macro).to eq :belongs_to
      end
    end
  end
end
