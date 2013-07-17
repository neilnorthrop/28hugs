$(document).ready(function() {

  $('.faq a').on('click', function(){
    $(this).parents('li').children('p').toggleClass('hidden');
    return false;
  });
});