# intern_project
インターンの課題

```
inum = ARGV[0].to_i

account_words = ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)

inum.times{
	account = account_words.sample(8).join
	puts account + "@backstore.jp"
}

```

* えどがわく
 * 中央区
* 千代田区

- [ ] うぇrちゅい
