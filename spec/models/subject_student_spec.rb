require 'rails_helper'

RSpec.describe SubjectStudent, type: :model do

  describe 'アソシエーションのテスト' do
    context 'Studentモデルとの関係' do
      it 'N:1の関係になっている' do
        expect(SubjectStudent.reflect_on_association(:student).macro).to eq :belongs_to
      end
    end
    context 'Subjectモデルとの関係' do
      it 'N:1の関係になっている' do
        expect(SubjectStudent.reflect_on_association(:subject).macro).to eq :belongs_to
      end
    end
  end
end
