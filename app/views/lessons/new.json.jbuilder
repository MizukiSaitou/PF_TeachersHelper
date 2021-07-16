json.array! @subject_teachers do |st|
  json.id st.teacher.id
  json.name st.teacher.name
end

