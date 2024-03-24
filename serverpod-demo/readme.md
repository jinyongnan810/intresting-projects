Following https://www.youtube.com/live/U4iMFNEyyk0?si=G4S5a3D3qrER_09t
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
```