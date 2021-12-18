module oauth1

pub struct Token {
pub:
	token string
	token_secret string
}

pub fn new_token(token string, token_secret string) Token {
	return Token {
		token: token,
		token_secret: token_secret
	}
}