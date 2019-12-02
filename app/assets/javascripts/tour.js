$(document).ready(function(){
  $("#t2764").click(function(){
    $(".live_content").animate(
      {height: "toggle(3000)", opacity: "toggle"},
      "slow"
    );
  });
});