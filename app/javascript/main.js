$(function() {
  $('#add-relationship').on('click', function() {
    let relationshipHTML = `
      <div class='form-group form-row relationship'>
        <div class='col-md-4'>
          <input type="text" name="relationship_type[]" id="relationship_type_" class="form-control">
        </div>
        <div class='col-md-7'>
          <input type="text" name="participant_name[]" id="participant_name_" class="form-control">
        </div>
        <div class='col-md-1'>
          <span class="btn btn-outline-danger delete-relationship">×</span>
        </div>
      </div>`;
    $('.relationship').last().after(relationshipHTML);
  });

  $(".edit_artwork").on('click', '.delete-relationship', function(e) {
    $(e.target).parents(".relationship").remove();
  });
});
