require 'rails_helper'

RSpec.describe Lesson, type: :model do
    describe 'バリデーションのテスト' do
      subject { lesson.valid? }

      let(:student) { create(:student) }
      let(:teacher) { create(:teacher) }
      let(:subject) { create(:subject) }
      let!(:lesson) { build(:lesson, student_id: student.id, teacher_id: teacher.id, subject_id: subject.id) }

      context 'start_atカラム' do
        it '空欄でないこと' do
          lesson.start_at = ''
          is_expected.to eq false
        end
      end
    end
    describe 'アソシエーションのテスト' do
      context 'Studentモデルとの関係' do
        it 'N:1の関係になっている' do
          expect(Lesson.reflect_on_association(:student).macro).to eq :belongs_to
        end
      end
      context 'Teacherモデルとの関係' do
        it 'N:1の関係になっている' do
          expect(Lesson.reflect_on_association(:teacher).macro).to eq :belongs_to
        end
      end
      context 'Subjectモデルとの関係' do
        it 'N:1の関係になっている' do
          expect(Lesson.reflect_on_association(:subject).macro).to eq :belongs_to
        end
      end
    end
end
