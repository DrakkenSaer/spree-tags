$.fn.tagAutocomplete = function() {
  this.select2({
    minimumInputLength: 1,
    multiple: true,
    initSelection: function(element, callback) {
      $.get(Spree.routes.tag_search, { ids: element.val() }, function(data) {
        callback(data);
      });
    },
    ajax: {
      url: Spree.routes.tag_search,
      datatype: 'json',
      data: function(term, page) {
        return { q: term };
      },
      results: function(data, page) {
        return { results: data };
      }
    },
    formatResult: function(tag) {
      return tag.name;
    },
    formatSelection: function(tag) {
      return tag.name;
    },
    id: function(tag) {
      return tag.id;
    }
  });
};

$(document).ready(function () {
  $('.tag_picker').tagAutocomplete();
});