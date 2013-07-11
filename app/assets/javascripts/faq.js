$(document).ready(function() {

  // $(".slidingDiv").hide();
  // $(".show_hide").show();

  $('.faq a').on('click', function(){
    $(this).parents('li').children('p').toggleClass('hidden');
    console.log('pass');
    return false;
  });
});