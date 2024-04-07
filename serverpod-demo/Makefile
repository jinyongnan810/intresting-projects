app: 
	cd fwitter && cd fwitter_flutter && flutter run -d macos --target lib/main_development.dart

server:
	cd fwitter && cd fwitter_server && dart bin/main.dart

migrations:
	cd fwitter && cd fwitter_server && serverpod create-migration

migrate:
	cd fwitter && cd fwitter_server && dart run bin/main.dart --role maintenance --apply-migrations

generate:
	cd fwitter && cd fwitter_server && serverpod generate

build:
	cd fwitter/fwitter_flutter && dart run build_runner build