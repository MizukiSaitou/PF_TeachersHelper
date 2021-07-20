# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Subject.create!(subject_name: "小学国語")
Subject.create!(subject_name: "小学算数")
Subject.create!(subject_name: "小学英語")
Subject.create!(subject_name: "中学英語")
Subject.create!(subject_name: "中学数学")
Subject.create!(subject_name: "中学国語")
Subject.create!(subject_name: "中学理科")
Subject.create!(subject_name: "中学社会")
Subject.create!(subject_name: "英表")
Subject.create!(subject_name: "C英")
Subject.create!(subject_name: "数ⅠA")
Subject.create!(subject_name: "数ⅡB")
Subject.create!(subject_name: "数Ⅲ")
Subject.create!(subject_name: "現代文")
Subject.create!(subject_name: "古典")
Subject.create!(subject_name: "化学")
Subject.create!(subject_name: "物理")
Subject.create!(subject_name: "生物")
Subject.create!(subject_name: "日本史")
Subject.create!(subject_name: "世界史")
Subject.create!(subject_name: "地理")


Student.create!(name: "中川　潤",
                name_kana: "なかがわ　じゅん",
                grade: "中学1年生",
                school: "第一中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09012345678",
                notices: "",
                subject_students_attributes: [4],
                )

Student.create!(name: "山中　大介",
                name_kana: "やまなか　だいすけ",
                grade: "中学2年生",
                school: "第二中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09091234567",
                notices: "",
                subject_students_attributes: [5,7],
                )

Student.create!(name: "松田　雄二",
                name_kana: "まつだ　ゆうじ",
                grade: "高校2年生",
                school: "第一高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09089123456",
                notices: "",
                subject_students_attributes: [12],
                )

Student.create!(name: "森　義昭",
                name_kana: "もり　よしあき",
                grade: "高校3年生",
                school: "第三高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09078912345",
                notices: "東大志望、レベルの高い講師希望",
                subject_students_attributes: [10,11,12],
                )

Student.create!(name: "竹内　悠太",
                name_kana: "たけうち　ゆうた",
                grade: "中学3年生",
                school: "第三中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09067891234",
                notices: "",
                subject_students_attributes: [4,5],
                )

Student.create!(name: "土屋　武",
                name_kana: "つちや　たけし",
                grade: "中学3年生",
                school: "第二中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09056789123",
                notices: "優しく教えてくれる講師希望",
                subject_students_attributes: [4],
                )

Student.create!(name: "荒木　智",
                name_kana: "あらき　さとし",
                grade: "小学6年生",
                school: "第一小学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09045678912",
                notices: "楽しく授業ができる講師",
                subject_students_attributes: [2],
                )

Student.create!(name: "佐野　雄一郎",
                name_kana: "さの　ゆういちろう",
                grade: "高校2年生",
                school: "第二高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09034567891",
                notices: "",
                subject_students_attributes: [16],
                )

Student.create!(name: "池田　里美",
                name_kana: "いけだ　さとみ",
                grade: "高校3年生",
                school: "第一高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09023456789",
                notices: "女性の講師希望",
                subject_students_attributes: [9,11],
                )

Student.create!(name: "木村　由紀",
                name_kana: "きむら　ゆき",
                grade: "中学2年生",
                school: "第四中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09012345678",
                notices: "",
                subject_students_attributes: [4],
                )

Student.create!(name: "藤原　有紗",
                name_kana: "ふじわら　ありさ",
                grade: "中学3年生",
                school: "第五中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09098765432",
                notices: "",
                subject_students_attributes: [6],
                )

Student.create!(name: "浅野　夏菜子",
                name_kana: "あさの　かなこ",
                grade: "高校2年生",
                school: "第三高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09087654321",
                notices: "",
                subject_students_attributes: [13],
                )

Student.create!(name: "村田　まみ",
                name_kana: "むらた　まみ",
                grade: "小学4年生",
                school: "第三小学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09076543219",
                notices: "",
                subject_students_attributes: [1],
                )

Student.create!(name: "水野　友希",
                name_kana: "みずの　ゆき",
                grade: "中学1年生",
                school: "第四中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09065432198",
                notices: "",
                subject_students_attributes: [7],
                )

Student.create!(name: "石井　麗華",
                name_kana: "いしい　れいか",
                grade: "中学3年生",
                school: "第一中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09054321987",
                notices: "",
                subject_students_attributes: [4,5],
                )

Student.create!(name: "新田　理佐",
                name_kana: "にった　りさ",
                grade: "高校2年生",
                school: "第二高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09043219876",
                notices: "",
                subject_students_attributes: [9],
                )

Teacher.create!(name: "小宮　詩織",
                name_kana: "こみや　しおり",
                grade: "大学3年生",
                university: "第七大学",
                undergraduate: "経済学部経済学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08012345678",
                notices: "",
                subject_teachers_attributes: [1,2,3,4,5,6,8,9,10,11,14,15],
                )

Teacher.create!(name: "牧　優子",
                name_kana: "まき　ゆうこ",
                grade: "大学1年生",
                university: "第八大学",
                undergraduate: "工学部機械系学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08091234567",
                notices: "",
                subject_teachers_attributes: [1,2,3,4,5,7,11,12,13,16],
                )

Teacher.create!(name: "白石　沙智",
                name_kana: "しらいし　さち",
                grade: "社会人",
                university: "第七大学",
                undergraduate: "文学部英文学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08089123456",
                notices: "英検対策可能",
                subject_teachers_attributes: [3,4,9,10],
                )

Teacher.create!(name: "広瀬　真司",
                name_kana: "ひろせ　しんじ",
                grade: "大学2年生",
                university: "第九大学",
                undergraduate: "医学部医学科",
                gender: 0,
                is_deleted: false,
                phone_number: "08078912345",
                notices: "",
                subject_teachers_attributes: [1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,20],
                )

Teacher.create!(name: "村井　正弘",
                name_kana: "むらい　まさひろ",
                grade: "大学1年生",
                university: "第八大学",
                undergraduate: "教育学部数学専攻",
                gender: 0,
                is_deleted: false,
                phone_number: "08067891234",
                notices: "",
                subject_teachers_attributes: [2,5,11,12,13],
                )

Teacher.create!(name: "植木　光",
                name_kana: "うえき　ひかる",
                grade: "大学4年生",
                university: "第七大学",
                undergraduate: "人文学部歴史専攻",
                gender: 0,
                is_deleted: false,
                phone_number: "08056789123",
                notices: "",
                subject_teachers_attributes: [1,3,4,6,8,9,10,14,15,18,19],
                )