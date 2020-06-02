---
layout: contact
title: Contact
---

<h1 class="is-size-2">Get in touch!</h1>
<p>Use the form below to send me a message.</p>
<form name="contact">
  <div class="field">
    <label class="label">Name</label>
    <div class="control">
      <input class="input" type="text" name="name" placeholder="e.g. Vitrina" required>
    </div>
  </div>
  <div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left">
      <input class="input" type="email" name="email" placeholder="e.g. vitrina@example.com" required>
      <span class="icon is-small is-left">
        <i class="fa fa-envelope"></i>
      </span>
    </div>
  </div>
  <div class="field">
    <label class="label">Subject</label>
    <div class="control">
      <input class="input" type="text" name="subject" placeholder="Message subject..." required>
    </div>
  </div>
  <div class="field">
    <label class="label">Message</label>
    <div class="control">
      <textarea class="textarea" name="message" placeholder="Message contents..." required></textarea>
    </div>
  </div>
  <div class="field">
    <div class="control">
      <label class="checkbox">
        <input type="checkbox" name="terms" required>
          I agree to the <a href="#">terms and conditions</a>
      </label>
    </div>
  </div>
  <div class="field is-grouped">
    <div class="control">
      <input type="submit" class="button is-primary" value="Submit">
    </div>
    <div class="control">
      <input type="reset" class="button is-link is-light" value="Cancel">
    </div>
  </div>
</form>
