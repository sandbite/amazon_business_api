# AmazonBusinessApi

A gem to interact with Amazon Business API using LedgerSync operations.

## Requirements

To start you need to have your amazon credentials handy, along with a way to store and retrieve your access token (to avoid issuing a new one on each request).

## Setting up the client

You can set up the client using the following code:
```ruby
client = AmazonBusinessApi::Client.new(
  region: 'us',
  refresh_token: 'your_refresh_token',
  client_id: 'your_client_id',
  client_secret: 'your_client_secret',
  aws_access_key_id: 'your_aws_access_key_id',
  aws_secret_access_key: 'your_aws_secret_access_key',
  # if you skip setting the following lambdas, the client will request a new token before each API call
  get_access_token: ->(access_token_key) { Rails.cache.read("AMAZON_BUSINESS_API_TOKEN-#{access_token_key}") },
  save_access_token: ->(access_token_key, token) { Rails.cache.write(
    "AMAZON_BUSINESS_API_TOKEN-#{access_token_key}",
    token[:access_token],
    expires_in: token[:expires_in] - 60
  ) }
)
```

During development of this gem you may opt to use these directly from your `.env` file using our helper method:
```ruby
client = AmazonBusinessApi::Client.new_from_env
```
The access token is persisted in your .env file and refreshed when it expires.