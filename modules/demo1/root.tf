resource "template_file" "demo_resource" {
  template = "${file("${path.module}/templates/module_demo_help.txt.tpl")}"

  vars {
    name          = "Demo1"
    var1          = "Number"
    v1description = "a number that does nothing"
    var2          = "Letter"
    v2description = "a letter that does nothing"
  }
}

output "help" {
  value = "${template_file.demo_resource.rendered}"
}
