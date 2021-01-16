"use strict";

function toggleSuccessDanger(element, success) {
  if (success) {
    element.toggleClass("is-success");
    element.removeClass("is-danger");
  } else {
    element.toggleClass("is-danger");
    element.removeClass("is-success");
  }
}

function showFormMessage(element, message, success) {
  toggleSuccessDanger(element, success);
  var next = element.parent().next(".help");

  if (next.length) {
    toggleSuccessDanger(next, success);
    next.text(message);
  } else {
    if (success) {
      success = "is-success";
    } else {
      success = "is-danger";
    }

    element.parent().after(`
      <p class="help ${success}">
        ${message}
      </p>`
    );
  }
}

var validateContactForm = function() {
  $("form[name='contact']").submit(function(event) {
    var valid = true;

    var field = $("[name='name']");
    if (field.val().length > 64) {
      showFormMessage(field, "This should be less than 64 characters.", false);
      valid = false;
    } else {
      showFormMessage(field, "Nice name!", true);
    }

    field = $("[name='email']");
    if (field.val().length > 320) {
      showFormMessage(field, "This email is invalid.", false);
      valid = false;
    } else {
      showFormMessage(field, "I'll use this to contact you back.", true);
    }

    field = $("[name='subject']");
    if (field.val().length > 512) {
      showFormMessage(field, "This subject is too long.", false);
      valid = false;
    } else {
      showFormMessage(field, "I'm very interested in this subject.", true);
    }

    field = $("[name='message']");
    if (field.val().length > 4096) {
      showFormMessage(field, "Make it less than 4096 characters.", false);
      valid = false;
    } else {
      showFormMessage(field, "I'll read this as soon as possible!", true);
    }

    if (!valid) {
      event.preventDefault();
    }
  });
}

$(document).ready(validateContactForm);
