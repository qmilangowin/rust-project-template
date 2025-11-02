{% if use_async -%}
#[tokio::main]
async fn main() {
    println!("{{project_name}} - ready to build!");
}
{% else -%}
fn main() {
    println!("{{project_name}} - ready to build!");
}
{% endif -%}
