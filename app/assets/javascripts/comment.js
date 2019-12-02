// $(function(){
//   function buildHTML(comment){
//     let html = `<p>
//                   <strong>
//                     <a href=/users/${comment.user_id}>${comment.user_name}</a>
//                     ：
//                   </strong>
//                   ${comment.text}
//                 </p>`
//     return html;
//   }
//   $('#new_comment').on('submit', function(e){
//     e.preventDefault();
//     let formData = new FormData(this);
//     let url = $(this).attr('action');
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       var html = buildHTML(data);
//       $('.comments').append(html);
//       $('#comment_text').val('');
//       $('.form__submit').prop('disabled', false);
//       $('form')[0].reset();
//     })
//     .fail(function(){
//       alert('error');
//     })
//     return false;
//   })
// })