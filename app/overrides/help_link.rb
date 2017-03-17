Deface::Override.new(virtual_path: "spree/shared/_nav_bar",
  name: "help_link",
  insert_after: "li#login-bar",
  text: "<li> <a href='/help'>Help</a></li>")
