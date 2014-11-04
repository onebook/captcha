build:
	@go build -o captcha server/main.go

start:
	@go run server/main.go --stype redis --saddress localhost:6379 --expire 300 --cache 3000

bench:
	@boom -c 1000 -n 100000 http://localhost:3000/captcha

.PHONY: start bench
