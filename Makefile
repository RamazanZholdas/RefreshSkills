run:
	go run main.go

launchdb:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

dropcontainer:
	docker rm postgres12

sqlc:
	sqlc generate

