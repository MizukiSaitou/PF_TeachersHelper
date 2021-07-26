require 'rails_helper'

describe '[STEP2] ユーザログイン後のテスト' do
  let(:user) { create(:user) }
  # let!(:other_user) { create(:user) }
  # let!(:book) { create(:book, user: user) }
  # let!(:other_book) { create(:book, user: other_user) }

  before do
    visit new_user_session_path
    fill_in 'user[employee_number]', with: user.name
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'ログイン'
  end


  describe 'ヘッダーのテスト: ログインしている場合' do
    context 'リンクの内容を確認: ※logoutは『ユーザログアウトのテスト』でテスト済みになります。' do
      subject { current_path }

      it '生徒一覧を押すと、生徒一覧画面に遷移する' do
        students_link = find_all('a')[1].native.inner_text
        students_link = students_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link students_link
        # is_expected.to eq '/users/' + user.id.to_s
      end
      it '講師一覧を押すと、講師一覧画面に遷移する' do
        teachers_link = find_all('a')[2].native.inner_text
        teachers_link = teachers_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link teachers_link
        # is_expected.to eq '/users'
      end
      it '授業一覧を押すと、授業一覧画面に遷移する' do
        lessons_link = find_all('a')[3].native.inner_text
        lessons_link = lessons_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link lessons_link
        # is_expected.to eq '/books'
      end
    end
  end

  describe '生徒一覧画面のテスト' do
    before do
      visit students_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/students'
      end
      # it '自分と他人の画像のリンク先が正しい' do
      #   expect(page).to have_link '', href: user_path(book.user)
      #   expect(page).to have_link '', href: user_path(other_book.user)
      # end
      it '生徒名のリンクが正しい' do
        expect(page).to have_link student.name, href: student_path(student)
      end
      it '生徒の性別が表示される' do
        expect(page).to have_content student.gender
      end
      it '生徒の学年が表示される' do
        expect(page).to have_content student.grade
      end
      it '生徒の学校が表示される' do
        expect(page).to have_content student.school
      end
      it '生徒の電話番号が表示される' do
        expect(page).to have_content phone_number
      end
      it '生徒の在籍が表示される' do
        expect(page).to have_content student.is_deleted
      end
    end

    # context 'サイドバーの確認' do
    #   it '自分の名前と紹介文が表示される' do
    #     expect(page).to have_content user.name
    #     expect(page).to have_content user.introduction
    #   end
    #   it '自分のユーザ編集画面へのリンクが存在する' do
    #     expect(page).to have_link '', href: edit_user_path(user)
    #   end
    #   it '「New book」と表示される' do
    #     expect(page).to have_content 'New book'
    #   end
    #   it 'titleフォームが表示される' do
    #     expect(page).to have_field 'book[title]'
    #   end
    #   it 'titleフォームに値が入っていない' do
    #     expect(find_field('book[title]').text).to be_blank
    #   end
    #   it 'opinionフォームが表示される' do
    #     expect(page).to have_field 'book[body]'
    #   end
    #   it 'opinionフォームに値が入っていない' do
    #     expect(find_field('book[body]').text).to be_blank
    #   end
    #   it 'Create Bookボタンが表示される' do
    #     expect(page).to have_button 'Create Book'
    #   end
    # end

    # context '投稿成功のテスト' do
    #   before do
    #     fill_in 'book[title]', with: Faker::Lorem.characters(number: 5)
    #     fill_in 'book[body]', with: Faker::Lorem.characters(number: 20)
    #   end

      # it '自分の新しい投稿が正しく保存される' do
      #   expect { click_button 'Create Book' }.to change(user.books, :count).by(1)
      # end
      # it 'リダイレクト先が、保存できた投稿の詳細画面になっている' do
      #   click_button 'Create Book'
      #   expect(current_path).to eq '/books/' + Book.last.id.to_s
      # end
    end
  end

  describe '生徒詳細画面のテスト' do
    before do
      visit student_path(student)
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/students/' + student.id.to_s
      end
      it '「生徒詳細」と表示される' do
        expect(page).to have_content '生徒詳細'
      end
      it '生徒の名前が表示される' do
        expect(page).to have_content studet.name
      end
      it '生徒のふりがなが表示される' do
        expect(page).to have_content studet.kana
      end
     it '生徒の性別が表示される' do
        expect(page).to have_content student.gender
      end
      it '生徒の学年が表示される' do
        expect(page).to have_content student.grade
      end
      it '生徒の学校が表示される' do
        expect(page).to have_content student.school
      end
      it '生徒の電話番号が表示される' do
        expect(page).to have_content phone_number
      end
      # it '生徒の受講科目が表示される' do
      #   expect(page).to have_content studet.name
      # end
      it '生徒の在籍が表示される' do
        expect(page).to have_content student.is_deleted
      end
      it '生徒情報の編集リンクが表示される' do
        expect(page).to have_link '生徒情報編集', href: edit_student_path(student)
      end
      it '授業を組むリンクが表示される' do
        expect(page).to have_link '授業を組む', href: new_lesson_path
      end
      it '成績管理リンクが表示される' do
        expect(page).to have_link '成績管理', href: records_path
      end
      it '戻るリンクが表示される' do
        expect(page).to have_link '生徒一覧に戻る', href: student_path
      end
    end

    # context 'サイドバーの確認' do
    #   it '自分の名前と紹介文が表示される' do
    #     expect(page).to have_content user.name
    #     expect(page).to have_content user.introduction
    #   end
    #   it '自分のユーザ編集画面へのリンクが存在する' do
    #     expect(page).to have_link '', href: edit_user_path(user)
    #   end
    #   it '「New book」と表示される' do
    #     expect(page).to have_content 'New book'
    #   end
    #   it 'titleフォームが表示される' do
    #     expect(page).to have_field 'book[title]'
    #   end
    #   it 'titleフォームに値が入っていない' do
    #     expect(find_field('book[title]').text).to be_blank
    #   end
    #   it 'opinionフォームが表示される' do
    #     expect(page).to have_field 'book[body]'
    #   end
    #   it 'opinionフォームに値が入っていない' do
    #     expect(find_field('book[body]').text).to be_blank
    #   end
    #   it 'Create Bookボタンが表示される' do
    #     expect(page).to have_button 'Create Book'
    #   end
    # end

    # context '投稿成功のテスト' do
    #   before do
    #     fill_in 'book[title]', with: Faker::Lorem.characters(number: 5)
    #     fill_in 'book[body]', with: Faker::Lorem.characters(number: 20)
    #   end

    #   it '自分の新しい投稿が正しく保存される' do
    #     expect { click_button 'Create Book' }.to change(user.books, :count).by(1)
    #   end
    # end

    context '編集リンクのテスト' do
      it '編集画面に遷移する' do
        click_link '生徒情報変更'
        expect(current_path).to eq '/students/' + student.id.to_s + '/edit'
      end
    end

    context '戻るリンクのテスト' do
      before do
        click_link '生徒一覧に戻る'
        expect(current_path).to eq '/students'
      end
    end
  end

  describe '生徒の投稿編集画面のテスト' do
    before do
      visit edit_student_path(student)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/students/' + student.id.to_s + '/edit'
      end
      it '「生徒情報変更」と表示される' do
        expect(page).to have_content '生徒情報変更'
      end
      it '名前編集フォームが表示される' do
        expect(page).to have_field 'student[name]', with: student.name
      end
      it 'ふりがな編集フォームが表示される' do
        expect(page).to have_field 'student[kana]', with: student.kana
      end
      it '学年編集フォームが表示される' do
        expect(page).to have_field 'student[grade]', with: student.grade
      end
      it '学校編集フォームが表示される' do
        expect(page).to have_field 'student[school]', with: student.school
      end
      it '電話番号編集フォームが表示される' do
        expect(page).to have_field 'student[phone_number]', with: student.phone_number
      end
      it '性別編集フォームが表示される' do
        expect(page).to have_field 'student[gender]', with: student.gender
      end
      # it '受講科目編集フォームが表示される' do
      #   expect(page).to have_field 'student[kana]', with: student.kana
      # end
      it '特記事項編集フォームが表示される' do
        expect(page).to have_field 'student[notices]', with: student.notices
      end
      it '在籍編集フォームが表示される' do
        expect(page).to have_field 'student[is_deleted]', with: student.is_deleted
      end
      it '変更登録ボタンが表示される' do
        expect(page).to have_button '変更登録'
      end
      it '戻るが表示される' do
        expect(page).to have_link '詳細に戻る', href: student_path(student)
      end
    end

    context '編集成功のテスト' do
      before do
        @student_old_name = student.name
        @student_old_kana = student.kana
        @student_old_grade = student.grade
        @student_old_schhol = student.school
        @student_old_phone_number = student.phone_number
        @student_old_gender = student.gender
        # @student_old_name = student.name 受講科目
        @student_old_notices = student.notices
        @student_old_is_deleted = student.is_deleted
        # fill_in 'book[title]', with: Faker::Lorem.characters(number: 4)
        # fill_in 'book[body]', with: Faker::Lorem.characters(number: 19)　　fakerでの作り方
        click_button '変更登録'
      end

      it '名前が正しく更新される' do
        expect(book.reload.name).not_to eq @student_old_name
      end
      it 'ふりがなが正しく更新される' do
        expect(book.reload.kana).not_to eq @student_old_kana
      end
       it '学年が正しく更新される' do
        expect(book.reload.grade).not_to eq @student_old_grade
      end
       it '学校が正しく更新される' do
        expect(book.reload.school).not_to eq @student_old_school
      end
      it '電話番号が正しく更新される' do
        expect(book.reload.phone_number).not_to eq @student_old_phone_number
      end
      it '性別が正しく更新される' do
        expect(book.reload.gender).not_to eq @student_old_gender
      end
      # it '受講科目が正しく更新される' do
      #   expect(book.reload.body).not_to eq @student_old_gender
      # end
      it '特記事項が正しく更新される' do
        expect(book.reload.notices).not_to eq @student_old_notices
      end
      it '在籍が正しく更新される' do
        expect(book.reload.is_deleted).not_to eq @student_old_is_deleted
      end
      it 'リダイレクト先が、生徒の詳細画面になっている' do
        expect(current_path).to eq '/students/' + student.id.to_s
        expect(page).to have_content '生徒情報'
      end
    end
  end
# 授業を組むについて
# 成績管理


  describe '講師一覧画面のテスト' do
    before do
      visit teachers_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/teachers'
      end
       it '講師名のリンクが正しい' do
        expect(page).to have_link teacher.name, href: teacher_path(teacher)
      end
      it '講師の性別が表示される' do
        expect(page).to have_content teacher.gender
      end
      it '講師の大学名が表示される' do
        expect(page).to have_content teacher.university
      end
      it '講師の学部が表示される' do
        expect(page).to have_content teacher.undergraduate
      end
      it '講師の電話番号が表示される' do
        expect(page).to have_content teacher.phone_number
      end
      it '講師の在籍が表示される' do
        expect(page).to have_content teacher.is_deleted
      end
    end

    # context 'サイドバーの確認' do
    #   it '自分の名前と紹介文が表示される' do
    #     expect(page).to have_content user.name
    #     expect(page).to have_content user.introduction
    #   end
    #   it '自分のユーザ編集画面へのリンクが存在する' do
    #     expect(page).to have_link '', href: edit_user_path(user)
    #   end
    #   it '「New book」と表示される' do
    #     expect(page).to have_content 'New book'
    #   end
    #   it 'titleフォームが表示される' do
    #     expect(page).to have_field 'book[title]'
    #   end
    #   it 'titleフォームに値が入っていない' do
    #     expect(find_field('book[title]').text).to be_blank
    #   end
    #   it 'opinionフォームが表示される' do
    #     expect(page).to have_field 'book[body]'
    #   end
    #   it 'opinionフォームに値が入っていない' do
    #     expect(find_field('book[body]').text).to be_blank
    #   end
    #   it 'Create Bookボタンが表示される' do
    #     expect(page).to have_button 'Create Book'
    #   end
    # end
  end

  describe '講師詳細画面のテスト' do
    before do
      visit teacher_path(teacher)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/teachers/' + teacher.id.to_s
      end
      it '講師の名前が表示される' do
        expect(page).to have_content teacher.name
      end
      it '講師のふりがなが表示される' do
        expect(page).to have_content teacher.kana
      end
      it '講師の学年が表示される' do
        expect(page).to have_content teacher.grade
      end
      it '講師の性別が表示される' do
        expect(page).to have_content teacher.gender
      end
      it '講師の大学名が表示される' do
        expect(page).to have_content teacher.university
      end
      it '講師の学部が表示される' do
        expect(page).to have_content teacher.undergraduate
      end
      it '講師の電話番号が表示される' do
        expect(page).to have_content teacher.phone_number
      end
      it '講師の特記事項が表示される' do
        expect(page).to have_content teacher.notices
      end
      # it '講師の受講科目が表示される' do
      #   expect(page).to have_content teacher.notices
      # end
      it '講師の在籍が表示される' do
        expect(page).to have_content teacher.is_deleted
      end
      it 'シフト登録リンクが表示される' do
        expect(page).to have_link 'シフト登録', href: shifts_path
      end
      it '戻るリンクが表示される' do
        expect(page).to have_link '講師一覧に戻る', href: teacher_path
      end
    end

  #   context 'サイドバーの確認' do
  #     it '自分の名前と紹介文が表示される' do
  #       expect(page).to have_content user.name
  #       expect(page).to have_content user.introduction
  #     end
  #     it '自分のユーザ編集画面へのリンクが存在する' do
  #       expect(page).to have_link '', href: edit_user_path(user)
  #     end
  #     it '「New book」と表示される' do
  #       expect(page).to have_content 'New book'
  #     end
  #     it 'titleフォームが表示される' do
  #       expect(page).to have_field 'book[title]'
  #     end
  #     it 'titleフォームに値が入っていない' do
  #       expect(find_field('book[title]').text).to be_blank
  #     end
  #     it 'opinionフォームが表示される' do
  #       expect(page).to have_field 'book[body]'
  #     end
  #     it 'opinionフォームに値が入っていない' do
  #       expect(find_field('book[body]').text).to be_blank
  #     end
  #     it 'Create Bookボタンが表示される' do
  #       expect(page).to have_button 'Create Book'
  #     end
  #   end
  # end

  describe '講師情報編集画面のテスト' do
    before do
      visit edit_teacher_path(teacher)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/teachers/' + teacher.id.to_s + '/edit'
      end
      it '「講師情報変更」と表示される' do
        expect(page).to have_content '講師情報変更'
      end
      it '名前編集フォームが表示される' do
        expect(page).to have_field 'teacher[name]', with: teacher.name
      end
      it 'ふりがな編集フォームが表示される' do
        expect(page).to have_field 'teacher[kana]', with: teacher.kana
      end
      it '学年編集フォームが表示される' do
        expect(page).to have_field 'teacher[grade]', with: teacher.grade
      end
      it '大学編集フォームが表示される' do
        expect(page).to have_field 'teacher[university]', with: teacher.university
      end
      it '学部編集フォームが表示される' do
        expect(page).to have_field 'teacher[undergraduate]', with: teacher.undergraduate
      end
       it '電話番号編集フォームが表示される' do
        expect(page).to have_field 'teacher[phone_number]', with: teacher.phone_number
      end
      it '性別編集フォームが表示される' do
        expect(page).to have_field 'teacher[gender]', with: teacher.gender
      end
      # it '受講科目編集フォームが表示される' do
      #   expect(page).to have_field 'student[kana]', with: student.kana
      # end
      it '特記事項編集フォームが表示される' do
        expect(page).to have_field 'teacher[notices]', with: teacher.notices
      end
      it '在籍編集フォームが表示される' do
        expect(page).to have_field 'teacher[is_deleted]', with: teacher.is_deleted
      end
      it '変更ボタンが表示される' do
        expect(page).to have_button '変更'
      end
       it '戻るが表示される' do
        expect(page).to have_link '詳細に戻る', href: teacher_path(teacher)
      end
    end

    context '更新成功のテスト' do
      before do
        @teacher_old_name = teacher.name
        @teacher_old_kana = teacher.kana
        @teacher_old_grade = teacher.grade
        @teacher_old_university = teacher.university
        @teacher_old_undergraduate = teacher.undergraduate
        @teacher_old_phone_number = teacher.phone_number
        @teacher_old_gender = teacher.gender
        # @student_old_name = student.name 受講科目
        @teacher_old_notices = teacher.notices
        @steacher_old_is_deleted = teacher.is_deleted
        # fill_in 'user[name]', with: Faker::Lorem.characters(number: 9)
        # fill_in 'user[introduction]', with: Faker::Lorem.characters(number: 19) fakerでできる？
        click_button '登録'
      end

      it '名前が正しく更新される' do
        expect(book.reload.name).not_to eq @teacher_old_name
      end
      it 'ふりがなが正しく更新される' do
        expect(book.reload.kana).not_to eq @teacher_old_kana
      end
      it '学年が正しく更新される' do
        expect(book.reload.gender).not_to eq @teacher_old_grade
      end
      it '大学が正しく更新される' do
        expect(book.reload.university).not_to eq @teacher_old_university
      end
      it '学部が正しく更新される' do
        expect(book.reload.undergraduate).not_to eq @teacher_old_undergraduate
      end
      it '電話番号が正しく更新される' do
        expect(book.reload.phone_number).not_to eq @teacher_old_phone_number
      end
      it '性別が正しく更新される' do
        expect(book.reload.gender).not_to eq @teacher_old_gender
      end
      # it '受講科目が正しく更新される' do
      #   expect(book.reload.body).not_to eq @student_old_gender
      # end
      it '特記事項が正しく更新される' do
        expect(book.reload.notices).not_to eq @teacher_old_notices
      end
      it '在籍が正しく更新される' do
        expect(book.reload.is_deleted).not_to eq @teacher_old_is_deleted
      end
      it 'リダイレクト先が、講師詳細画面になっている' do
        expect(current_path).to eq '/teachers/' + teacher.id.to_s
      end
    end
  end

  # シフト管理
end
