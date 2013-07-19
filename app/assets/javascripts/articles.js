$(document).ready(function(){
  // While there is still pagination on the page:
  if ($('.pagination').length) {

    // Detect the 'scroll' event:
    $(window).scroll(function() {

      // Get the next URL from pagination.
      var url = $('.pagination .next_page').attr('href');

      // $(window).scrollTop() represents where I've scrolled to.
      // $(document).height() represents the height of the document content, which changes.
      // $(window).height() - represents the screen height, which does not change.
      //
      // The final calculation is then whenever I scroll past 50px form the bottom.
      //
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').text("Fetching more articles...");

        // http://api.jquery.com/jQuery.getScript/
        // Alias for $.ajax, assumes dataType:"script".
        return $.getScript(url);
      }
    });

    // Trigger a scroll off the bat.
    return $(window).scroll();
  }
});