module twitter 

import net.http

const twitter_api = "https://api.twitter.com/2/"

pub struct Client {
	http.Request
	consumer_key string
	consumer_secret string
	token string
	token_secret string
	base_url: string
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