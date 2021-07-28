require 'rails_helper'

RSpec.describe Student, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

    describe 'バリデーションのテスト' do
      subject { student.valid? }

      let(:student) { create(:student) }

      context 'nameカラム' do
        it '空欄でないこと' do
          student.name = ''
          is_expected.to eq false
        end
      end
      context 'name_kanaカラム' do
        it '空欄でないこと' do
          student.name_kana = ''
          is_expected.to eq false
        end
      end
      context 'gradeカラム' do
        it '空欄でないこと' do
          student.grade = ''
          is_expected.to eq false
        end
      end
      context 'schoolカラム' do
        it '空欄でないこと' do
          student.school = ''
          is_expected.to eq false
        end
      end
      context 'genderカラム' do
        it '空欄でないこと' do
          student.gender = ''
          is_expected.to eq false
        end
      end
      context 'phone_numberカラム' do
        it '空欄でないこと' do
          student.phone_number = ''
          is_expected.to eq false
        end
      end
    end

    describe 'アソシエーションのテスト' do

      context 'Teacherモデルとの関係' do
        it 'N:Nの関係になっている' do
          expect(Student.reflect_on_association(:teachers).macro).to eq :has_many
        end
      end
      context 'Lessonモデルとの関係' do
        it '1:Nの関係になっている' do
          expect(Student.reflect_on_association(:lessons).macro).to eq :has_many
        end
      end
      context 'Recordモデルとの関係' do
        it '1:Nの関係になっている' do
          expect(Student.reflect_on_association(:records).macro).to eq :has_many
        end
      end
      context 'SubjectStudentモデルとの関係' do
        it '1:Nの関係になっている' do
          expect(Student.reflect_on_association(:subject_students).macro).to eq :has_many
        end
      end
      context 'Subjectモデルとの関係' do
        it '1:Nの関係になっている' do
          expect(Student.reflect_on_association(:subjects).macro).to eq :has_many
        end
      end
    end
end
