(function() {
  ajax({
    url: "http://localhost:5050/index",
    type: "get",
    dataType: "json",
      success: function (result) {
          console.log(result);
      }
  });
})();
