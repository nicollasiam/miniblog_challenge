$(document).ready(function() {
  // Checks if Main Head title has the string
  // Thats in title. If has, user can modify.
  // Otherwise, prevent default.
  $('#post_head_title').on('keyup', function(e) {
    // Check if mainTitle string still contains the title String
    // If not, unmodify the mainTitle string
    if (!$(this).val().includes($('#post_title').val())) {
      // Check if was deletion or addition
      if (e.keyCode === 8 || e.keyCode === 46) {
        // Deletion
        var titleLength = $('#post_title').val().length - 1;
      }
      else {
        // Addition
        var titleLength = $('#post_title').val().length + 1;
      }

      var mainTitleSliced = $(this).val().slice(titleLength);
      $(this).val($('#post_title').val() + mainTitleSliced);
    }
  });


  // While user is typing in title input
  // add that string at the beginning of
  // Main title value
  $('#post_title').on('keydown', function(e) {
    // Check if alphanimeric || backspace (8) || delete (46) || ç (186) || ? (191) || . (190)
    if (String.fromCharCode(e.keyCode).match(/[a-z0-9,\s();:ç\/]+$/i) ||
                                              e.keyCode === 8 ||
                                              e.keyCode === 46 ||
                                              e.keyCode === 186 ||
                                              e.keyCode === 191 ||
                                              e.keyCode === 190) {
      var mainTitleString = $('#post_head_title').val();

      // Get title length
      var titleLength = $(this).val().length;

      // Remove old title string from main Title
      var mainTitleSliced = $('#post_head_title').val().slice(titleLength);

      // Update Main title value
      if (e.keyCode === 8 || e.keyCode === 46) {
        $('#post_head_title').val($(this).val().slice(0, titleLength - 1) + mainTitleSliced);
      }
      else {
        $('#post_head_title').val($(this).val() + e.key + mainTitleSliced);
      }
    }
  });
})
