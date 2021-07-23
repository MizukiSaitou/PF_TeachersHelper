$(document).on('turbolinks:load', function(){
  const inputForm = $('#search_button');
  const url = '/lessons/search';
  const searchResult = $('.result ul');

  function builtHTML(data){
    let html = `
    <li class="search-teachers">${data.name}
     <a class="btn select-teacher" data-teacher-id="${data.id}" data-teacher-name="${data.name}">選択</a>
    </li>
    `
    searchResult.append(html);
  }

  function NoResult(message){
    let html = `
    <li>${message}</li>
    `
    searchResult.append(html);
  }

  function selectedTeacher(id, name){
  　let html =
   　`
      <input name='lesson[teacher_id]' type='hidden' value="${id}">
        <p class="selected_teacher-name">${name}</p>`
  　$("#selected_teacher").append(html);
    }

  // フォームに入力すると発火する
  inputForm.on('click', function(){
    const startAt = $('#lesson_start_at').val();
    const subject = $('#lesson_subject_id').val();
    $("#selected_teacher").empty();
    search(startAt, subject);
  });

  // ajax処理
  function search(startAt, subject){
    $.ajax({
      type: 'GET',
      url: url,
      data: {start_at: startAt, subject: subject},
      dataType: 'json'
    })
    .done(function(data){
      searchResult.empty(); //再度検索した際に前のデータを消す処理
      if (data === null || data.length === 0) {
        NoResult('該当する講師はいません')
      } else {
        data.forEach(function(data) { //dataは配列型に格納されているのでEach文で回す
          builtHTML(data)
        });
      }
    })
    .fail(function(data){
      alert('通信に失敗しました');
    })
  }
  $(document).on('click', '.select-teacher', function() {
    const id = $(this).data('teacher-id');
    const name = $(this).data('teacher-name');
    selectedTeacher(id, name);
    $('.search-teachers').remove();
  });
});
