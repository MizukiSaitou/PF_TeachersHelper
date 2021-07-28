require 'rails_helper'

RSpec.describe Shift, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
    describe 'バリデーションのテスト' do
      subject { shift.valid? }

      let(:teacher) { create(:teacher) }
      let!(:shift) { build(:shift, teacher_id: teacher.id) }

      context 'start_dateカラム' do
        it '空欄でないこと' do
          shift.start_at = ''
          is_expected.to eq false
        end
      end
    end

    describe 'アソシエーションのテスト' do
      context 'Userモデルとの関係' do
        it 'N:1の関係になっている' do
          expect(Shift.reflect_on_association(:teacher).macro).to eq :belongs_to
        end
      end
    end
end
