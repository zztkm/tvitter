module twitter

import oauth1

// そのうちmedia対応したい
pub fn post_tweet (status string) {
	body := map[string]string{
		"text": status
	}
	auth_header := oauth1.generate_oauth1_header()
}