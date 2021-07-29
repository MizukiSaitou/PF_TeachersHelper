require 'rails_helper'

RSpec.describe Teacher, type: :model do


   describe 'バリデーションのテスト' do
    subject { teacher.valid? }

    let(:teacher) { create(:teacher) }

    context 'nameカラム' do
      it '空欄でないこと' do
        teacher.name = ''
        is_expected.to eq false
      end
    end
    context 'name_kanaカラム' do
      it '空欄でないこと' do
        teacher.name_kana = ''
        is_expected.to eq false
      end
    end
    context 'gradeカラム' do
      it '空欄でないこと' do
        teacher.grade = ''
        is_expected.to eq false
      end
    end
    context 'universityカラム' do
      it '空欄でないこと' do
        teacher.university = ''
        is_expected.to eq false
      end
    end
    context 'undergraduateカラム' do
      it '空欄でないこと' do
        teacher.undergraduate = ''
        is_expected.to eq false
      end
    end
    context 'genderカラム' do
      it '空欄でないこと' do
        teacher.gender = ''
        is_expected.to eq false
      end
    end
    context 'phone_numberカラム' do
      it '空欄でないこと' do
        teacher.phone_number = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Studentモデルとの関係' do
      it 'N:Nの関係になっている' do
        expect(Teacher.reflect_on_association(:students).macro).to eq :has_many
      end
    end
    context 'Lessonモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Teacher.reflect_on_association(:lessons).macro).to eq :has_many
      end
    end
    context 'Shiftモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Teacher.reflect_on_association(:shifts).macro).to eq :has_many
      end
    end
    context 'SubjectTeacherモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Teacher.reflect_on_association(:subject_teachers).macro).to eq :has_many
      end
    end
     context 'Subjectモデルとの関係' do
      it '1:Nの関係になっている' do
        expect(Teacher.reflect_on_association(:subjects).macro).to eq :has_many
      end
    end
  end
end
