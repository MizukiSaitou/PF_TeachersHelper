$(document).on('turbolinks:load', function(){
  const inputForm = $('#subject_id');
  const url = location.href;
  const searchResult = $('.result ul');

  function builtHTML(data){
    let html = `
    <li>${data.name}
     <a class="btn select-teacher" data-teacher-id="${data.id}">選択</a>
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

  // フォームに入力すると発火する
  inputForm.on('change', function(){
    const target = $(this).val();
    search(target);
    console.log(target)
  });

  // ajax処理
  function search(target){
    $.ajax({
      type: 'GET',
      url: url,
      data: {keyword: target},
      dataType: 'json'
    })
    .done(function(data){
      searchResult.empty(); //再度検索した際に前のデータを消す処理
      if (data.length !== 0) {
        data.forEach(function(data) { //dataは配列型に格納されているのでEach文で回す
          builtHTML(data)
        });
      } else {
        NoResult('該当する講師はいません')
      }
    })
    .fail(function(data){
      alert('非同期通信に失敗しました');
    })
  }
  $(document).on('click', '.select-teacher', function() {
    console.log('選択した')
  });
});