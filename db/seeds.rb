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
                )

SubjectStudent.create!(student_id:1,subject_id:4)


Student.create!(name: "山中　大介",
                name_kana: "やまなか　だいすけ",
                grade: "中学2年生",
                school: "第二中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09091234567",
                notices: "",
                )

SubjectStudent.create!(student_id:2,subject_id:5)
SubjectStudent.create!(student_id:2,subject_id:7)


Student.create!(name: "松田　雄二",
                name_kana: "まつだ　ゆうじ",
                grade: "高校2年生",
                school: "第一高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09089123456",
                notices: "",
                )

SubjectStudent.create!(student_id:3,subject_id:12)


Student.create!(name: "森　義昭",
                name_kana: "もり　よしあき",
                grade: "高校3年生",
                school: "第三高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09078912345",
                notices: "東大志望、レベルの高い講師希望",
                )

SubjectStudent.create!(student_id:4,subject_id:10)
SubjectStudent.create!(student_id:4,subject_id:11)
SubjectStudent.create!(student_id:4,subject_id:12)


Student.create!(name: "竹内　悠太",
                name_kana: "たけうち　ゆうた",
                grade: "中学3年生",
                school: "第三中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09067891234",
                notices: "",
                )

SubjectStudent.create!(student_id:5,subject_id:4)
SubjectStudent.create!(student_id:5,subject_id:5)

Student.create!(name: "土屋　武",
                name_kana: "つちや　たけし",
                grade: "中学3年生",
                school: "第二中学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09056789123",
                notices: "優しく教えてくれる講師希望",
                )

SubjectStudent.create!(student_id:6,subject_id:4)


Student.create!(name: "荒木　智",
                name_kana: "あらき　さとし",
                grade: "小学6年生",
                school: "第一小学校",
                gender: 0,
                is_deleted: false,
                phone_number: "09045678912",
                notices: "楽しく授業ができる講師が良い",
                )

SubjectStudent.create!(student_id:7,subject_id:2)


Student.create!(name: "佐野　雄一郎",
                name_kana: "さの　ゆういちろう",
                grade: "高校2年生",
                school: "第二高校",
                gender: 0,
                is_deleted: false,
                phone_number: "09034567891",
                notices: "",
                )

SubjectStudent.create!(student_id:8,subject_id:16)


Student.create!(name: "池田　里美",
                name_kana: "いけだ　さとみ",
                grade: "高校3年生",
                school: "第一高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09023456789",
                notices: "女性の講師希望",
                )

SubjectStudent.create!(student_id:9,subject_id:9)
SubjectStudent.create!(student_id:9,subject_id:11)


Student.create!(name: "木村　由紀",
                name_kana: "きむら　ゆき",
                grade: "中学2年生",
                school: "第四中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09012345678",
                notices: "",
                )

SubjectStudent.create!(student_id:10,subject_id:4)


Student.create!(name: "藤原　有紗",
                name_kana: "ふじわら　ありさ",
                grade: "中学3年生",
                school: "第五中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09098765432",
                notices: "",
                )

SubjectStudent.create!(student_id:11,subject_id:6)


Student.create!(name: "浅野　夏菜子",
                name_kana: "あさの　かなこ",
                grade: "高校2年生",
                school: "第三高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09087654321",
                notices: "",
                )

SubjectStudent.create!(student_id:12,subject_id:13)


Student.create!(name: "村田　まみ",
                name_kana: "むらた　まみ",
                grade: "小学4年生",
                school: "第三小学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09076543219",
                notices: "",
                )

SubjectStudent.create!(student_id:13,subject_id:1)


Student.create!(name: "水野　友希",
                name_kana: "みずの　ゆき",
                grade: "中学1年生",
                school: "第四中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09065432198",
                notices: "",
                )

SubjectStudent.create!(student_id:14,subject_id:7)


Student.create!(name: "石井　麗華",
                name_kana: "いしい　れいか",
                grade: "中学3年生",
                school: "第一中学校",
                gender: 1,
                is_deleted: false,
                phone_number: "09054321987",
                notices: "",
                )

SubjectStudent.create!(student_id:15,subject_id:4)
SubjectStudent.create!(student_id:15,subject_id:5)


Student.create!(name: "新田　理佐",
                name_kana: "にった　りさ",
                grade: "高校2年生",
                school: "第二高校",
                gender: 1,
                is_deleted: false,
                phone_number: "09043219876",
                notices: "",
                )

SubjectStudent.create!(student_id:16,subject_id:9)


Teacher.create!(name: "小宮　詩織",
                name_kana: "こみや　しおり",
                grade: "大学3年生",
                university: "第七大学",
                undergraduate: "経済学部経済学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08012345678",
                notices: "",
                )

SubjectTeacher.create!(teacher_id:1,subject_id:1)
SubjectTeacher.create!(teacher_id:1,subject_id:2)
SubjectTeacher.create!(teacher_id:1,subject_id:3)
SubjectTeacher.create!(teacher_id:1,subject_id:4)
SubjectTeacher.create!(teacher_id:1,subject_id:5)
SubjectTeacher.create!(teacher_id:1,subject_id:6)
SubjectTeacher.create!(teacher_id:1,subject_id:8)
SubjectTeacher.create!(teacher_id:1,subject_id:9)
SubjectTeacher.create!(teacher_id:1,subject_id:10)
SubjectTeacher.create!(teacher_id:1,subject_id:11)
SubjectTeacher.create!(teacher_id:1,subject_id:14)
SubjectTeacher.create!(teacher_id:1,subject_id:15)


Teacher.create!(name: "牧　優子",
                name_kana: "まき　ゆうこ",
                grade: "大学1年生",
                university: "第八大学",
                undergraduate: "工学部機械系学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08091234567",
                notices: "",
                )

SubjectTeacher.create!(teacher_id:2,subject_id:1)
SubjectTeacher.create!(teacher_id:2,subject_id:2)
SubjectTeacher.create!(teacher_id:2,subject_id:3)
SubjectTeacher.create!(teacher_id:2,subject_id:4)
SubjectTeacher.create!(teacher_id:2,subject_id:5)
SubjectTeacher.create!(teacher_id:2,subject_id:7)
SubjectTeacher.create!(teacher_id:2,subject_id:11)
SubjectTeacher.create!(teacher_id:2,subject_id:12)
SubjectTeacher.create!(teacher_id:2,subject_id:13)
SubjectTeacher.create!(teacher_id:2,subject_id:16)


Teacher.create!(name: "白石　沙智",
                name_kana: "しらいし　さち",
                grade: "社会人",
                university: "第七大学",
                undergraduate: "文学部英文学科",
                gender: 1,
                is_deleted: false,
                phone_number: "08089123456",
                notices: "英検対策可能",
                )

SubjectTeacher.create!(teacher_id:3,subject_id:3)
SubjectTeacher.create!(teacher_id:3,subject_id:4)
SubjectTeacher.create!(teacher_id:3,subject_id:9)
SubjectTeacher.create!(teacher_id:3,subject_id:10)


Teacher.create!(name: "広瀬　真司",
                name_kana: "ひろせ　しんじ",
                grade: "大学2年生",
                university: "第九大学",
                undergraduate: "医学部医学科",
                gender: 0,
                is_deleted: false,
                phone_number: "08078912345",
                notices: "",
                )

SubjectTeacher.create!(teacher_id:4,subject_id:1)
SubjectTeacher.create!(teacher_id:4,subject_id:2)
SubjectTeacher.create!(teacher_id:4,subject_id:3)
SubjectTeacher.create!(teacher_id:4,subject_id:4)
SubjectTeacher.create!(teacher_id:4,subject_id:5)
SubjectTeacher.create!(teacher_id:4,subject_id:6)
SubjectTeacher.create!(teacher_id:4,subject_id:7)
SubjectTeacher.create!(teacher_id:4,subject_id:8)
SubjectTeacher.create!(teacher_id:4,subject_id:9)
SubjectTeacher.create!(teacher_id:4,subject_id:10)
SubjectTeacher.create!(teacher_id:4,subject_id:11)
SubjectTeacher.create!(teacher_id:4,subject_id:12)
SubjectTeacher.create!(teacher_id:4,subject_id:13)
SubjectTeacher.create!(teacher_id:4,subject_id:16)
SubjectTeacher.create!(teacher_id:4,subject_id:17)
SubjectTeacher.create!(teacher_id:4,subject_id:18)
SubjectTeacher.create!(teacher_id:4,subject_id:20)


Teacher.create!(name: "村井　正弘",
                name_kana: "むらい　まさひろ",
                grade: "大学1年生",
                university: "第八大学",
                undergraduate: "教育学部数学専攻",
                gender: 0,
                is_deleted: false,
                phone_number: "08067891234",
                notices: "",
                )

SubjectTeacher.create!(teacher_id:5,subject_id:2)
SubjectTeacher.create!(teacher_id:5,subject_id:5)
SubjectTeacher.create!(teacher_id:5,subject_id:11)
SubjectTeacher.create!(teacher_id:5,subject_id:12)
SubjectTeacher.create!(teacher_id:5,subject_id:13)


Teacher.create!(name: "植木　光",
                name_kana: "うえき　ひかる",
                grade: "大学4年生",
                university: "第七大学",
                undergraduate: "人文学部歴史専攻",
                gender: 0,
                is_deleted: false,
                phone_number: "08056789123",
                notices: "",
                )

SubjectTeacher.create!(teacher_id:6,subject_id:1)
SubjectTeacher.create!(teacher_id:6,subject_id:3)
SubjectTeacher.create!(teacher_id:6,subject_id:4)
SubjectTeacher.create!(teacher_id:6,subject_id:6)
SubjectTeacher.create!(teacher_id:6,subject_id:8)
SubjectTeacher.create!(teacher_id:6,subject_id:9)
SubjectTeacher.create!(teacher_id:6,subject_id:10)
SubjectTeacher.create!(teacher_id:6,subject_id:14)
SubjectTeacher.create!(teacher_id:6,subject_id:15)
SubjectTeacher.create!(teacher_id:6,subject_id:18)
SubjectTeacher.create!(teacher_id:6,subject_id:19)