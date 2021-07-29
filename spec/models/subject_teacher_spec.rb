require 'rails_helper'

RSpec.describe SubjectTeacher, type: :model do

  describe 'アソシエーションのテスト' do
    context 'Teacherモデルとの関係' do
      it 'N:1の関係になっている' do
        expect(SubjectTeacher.reflect_on_association(:teacher).macro).to eq :belongs_to
      end
    end
    context 'Subjectモデルとの関係' do
      it 'N:1の関係になっている' do
        expect(SubjectTeacher.reflect_on_association(:subject).macro).to eq :belongs_to
      end
    end
  end
end
