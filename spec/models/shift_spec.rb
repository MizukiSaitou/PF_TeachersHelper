require 'rails_helper'

RSpec.describe Shift, type: :model do

    describe 'バリデーションのテスト' do
      subject { shift.valid? }

      let(:teacher) { create(:teacher) }
      let!(:shift) { build(:shift, teacher_id: teacher.id) }

      context 'start_atカラム' do
        it '空欄でないこと' do
          shift.start_at = ''
          is_expected.to eq false
        end
      end
    end

    describe 'アソシエーションのテスト' do
      context 'Teacherモデルとの関係' do
        it 'N:1の関係になっている' do
          expect(Shift.reflect_on_association(:teacher).macro).to eq :belongs_to
        end
      end
    end
end
