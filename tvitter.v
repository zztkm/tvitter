module twitter

import net.http

const twitter_api = "https://api.twitter.com/2/"
// 参考
// https://github.com/michimani/gotwi/blob/f7846da9d6b290552a4492c144a22acc751adc3c/client.go#L220
const oauth1header = `OAuth oauth_consumer_key="$oauth_consumer_key",oauth_nonce="$oauth_nonce",oauth_signature="$oauth_signature",oauth_signature_method="$oauth_signature_method",oauth_timestamp="$oauth_timestamp",oauth_token="$oauth_token",oauth_version="$oauth_version"`

pub struct Client {
	http.Request
	consumer_key string
	consumer_secret string
	token string
	token_secret string
	base_url string
}

fn (c &Client) generate_oauth1_header(method string) {

}

fn (c &Client) new_request(method string) {

}

pub fn new_client(consumer_key string, consumer_secret string, token string, token_secret string) Client {
	mut c := Client {
		consumer_key: consumer_key
		consumer_secret: consumer_secret
		token: token
		token_secret: token_secret
		base_url: twitter_api
	}
	auth_header := ""
	c.header.add_custom("Authorization", auth_header)

	return c
}
