Following https://www.youtube.com/live/U4iMFNEyyk0?si=G4S5a3D3qrER_09t

# Tricks
## makefile
```
touch Makefile
# add 
run: 
	cd fwitter && cd fwitter_flutter && flutter run -d macos --target lib/main_development.dart
# run `make run` to start the app
```

# maintenance
## update serverpod
- `dart pub global activate serverpod_cli 2.0.0`
- update each project's `pubspec.yaml` to use the same version

# Steps
## initial setup
- https://docs.serverpod.dev/

### generate project
```
serverpod create fwitter
cd fwitter_server 
serverpod generate
```

### prepare postgres
https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
- create database `fwitter`
- create user `fwitter` with `CREATE USER fwitter WITH PASSWORD '${password}';` and `GRANT ALL ON ALL TABLES IN SCHEMA public TO fwitter;`
  - password should be replaced with the one in `passwords.yaml`
  - also need user to be superuser `ALTER USER fwitter WITH SUPERUSER;`
- dart run bin/main.dart --role maintenance --apply-migrations 

### prepare for macos
- open `Runner.xcodeproj` in `fwitter_flutter/macos`
- in signing & capabilities, check Outgoing Connections (Client)

### start
- in `fwitter_server` run `dart run bin/main.dart`
- in `fwitter_web` run `flutter run`


### replace default flutter project
```
mv fwitter_flutter fwitter_flutter.bak
very_good create flutter_app fwitter_flutter
# remove flutter_gen dependency and add fwitter_client, serverpod_flutter, build_runner(in dev)
rm -rf macos
flutter create . --platforms=macos
```

### use injectable and get_it to provider client instance
- add `injectable`, `injectable_generator` and `get_it` to `fwitter_client/pubspec.yaml`
- create `di.dart`
- `dart run build_runner build`
- add third party module `FwitterClientModule`
- `dart run build_runner build`
- use instance like `GetIt.I<Client>()`

## handle authentication
- follow https://docs.serverpod.dev/concepts/authentication/setup
- `dart run build_runner build` in `fwitter_flutter`.
- `make generate`.

## Data layer
### Make models
- create .spy.yaml files.
- make migrations
- make migrate
- make generate

### Make repositories
- (client)create abstract class Repository
- (client)extend Repository with PostRepository
- (server)add endpoint
- make generate
- (client) use client to post to endpoint in PostRepository
- (client) make repository singleton

### Make views to access data
- (flutter) create view widget
- (flutter) make bloc with repository to access data and update states.
- (flutter) use `BlocListener` or `BlocBuilder` to listen to states and update UI.

## Filter data
### create shared package
- `flutter create -t package fwitter_shared`
- make abstract class `Filter<T>` that has filter method
  - define actual `PostFilter` that extends `Filter<Post>` and has filter method
- define abstract `ComboFilter` that has list of filters and apply and or logic
  - define actual `AndFilter` and `OrFilter` that extends `ComboFilter` and has apply method
- use `AndFilter` and `OrFilter` to perform filter with list of filters.