(function () {
  function renderStatus(targetId, type, message) {
    var target = document.getElementById(targetId);
    if (!target) return;
    target.innerHTML =
      '<div class="alert alert-' + type + ' mt-4 text-center" role="alert">' +
      message +
      "</div>";
  }

  function buildBookSessionNotes(form) {
    var message = form.querySelector("#message");
    var target = form.querySelector("#book-session-additional-notes");
    if (!target) return;

    var lines = [];
    if (message && message.value.trim()) lines.push("Additional Notes: " + message.value.trim());
    target.value = lines.join("\n");
  }

  document.querySelectorAll("form[data-google-form]").forEach(function (form) {
    form.addEventListener("submit", function () {
      if (form.dataset.googleForm === "book-session") {
        buildBookSessionNotes(form);
      }

      var statusTarget = form.dataset.statusTarget;
      window.setTimeout(function () {
        renderStatus(statusTarget, "success", "Thanks. Your enquiry has been submitted successfully.");
        form.reset();
      }, 600);
    });
  });
})();
