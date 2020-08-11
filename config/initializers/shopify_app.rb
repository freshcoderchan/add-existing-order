# frozen_string_literal: true

ShopifyApp.configure do |config|
  config.application_name = ENV["SHOPIFY_APP_NAME"]
  config.api_key = ENV["SHOPIFY_API_KEY"]
  config.secret = ENV["SHOPIFY_API_SECRET"]
  config.old_secret = ""
  config.scope = ENV["SHOPIFY_APP_SCOPES"].split(",").join(", ")
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = ENV["SHOPIFY_API_VERSION"]
  config.shop_session_repository = "Shop"
  config.webhooks = [
    { topic: "orders/fulfilled", address: "https://example.com/webhooks/orders_fulfilled", format: "json" },
    { topic: "orders/create", address: "https://example.com/webhooks/orders_create", format: "json" },
  ]
end
