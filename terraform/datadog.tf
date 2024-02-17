resource "datadog_monitor" "http_check" {
  name    = "http check"
  type    = "service check"
  message = "Ooops! Redmine is dead..."
  tags    = ["redmine:http-check"]

  query = "\"http.can_connect\".over(\"instance:main_page\",\"url:http://localhost:3000\").by(\"*\").last(2).count_by_status()"
}
