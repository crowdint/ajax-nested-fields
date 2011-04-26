function remove_fields(link, container) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest('.' + container).hide();
}

function add_child_field(container, field_name, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp(field_name, "g");

  $('#' + container).append(content.replace(regexp, new_id));
}