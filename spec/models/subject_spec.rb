require 'rails_helper'

RSpec.describe Subject, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe 'アソシエーションのテスト' do

    context 'Teacherモデルとの関係' do
      it 'N:Nの関係になっている' do
        expect(Subject.reflect_on_association(:teachers).macro).to eq :has_many
      end
    end
    context 'Studentモデルとの関係' do
      it 'N:Nの関係になっている' do
        expect(Subject.reflect_on_association(:students).macro).to eq :has_many
      end
    end
    context 'Lessonモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Subject.reflect_on_association(:lessons).macro).to eq :has_many
      end
    end
    context 'SubjectStudentモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Subject.reflect_on_association(:subject_students).macro).to eq :has_many
      end
    end
     context 'SubjectTeacherモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Subject.reflect_on_association(:subject_teachers).macro).to eq :has_many
      end
    end
  end
end
