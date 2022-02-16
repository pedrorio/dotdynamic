EXECS = import_keys

.PHONY: $(EXECS)
all: $(EXECS)

export_keys:
	mkdir -p pgp
	gpg --export-ownertrust > pgp/pgp-ownertrust.asc
	gpg --export-secret-keys --armor > pgp/pgp-private-keys.asc
	gpg --export-secret-subkeys --armor > pgp/pgp-private-subkeys.asc
	gpg --export --armor > pgp/pgp-public-keys.asc
	gpg --gen-revoke --armor {work_keyid} > pgp/pgp-revocation.{work_keyid}.asc

import_keys:
	gpg --import pgp/pgp-public-keys.asc
	gpg --import pgp/pgp-private-keys.asc
	gpg --import-ownertrust pgp/pgp-ownertrust.asc

expire_keys:
	gpg --edit-key {work_keyid}
	# expire

password_keys:
	gpg --edit-key {work_keyid}
# 	passwd

revoke_keys:
	gpg --import pgp/pgp-revocation.{work_keyid}.asc

send_keys:
	gpg --send-keys {work_keyid}
	# or no id to send all

receive_keys:
	gpg --recv-keys {work_keyid}

refresh_keys:
	gpg --refresh-keys

create:
	gpg --expert --full-gen-key
	# ECC (set your own capabilities)
	# Only certify (toggle the others)
	# Finished
	# Curve 25519
	# 2y
	# {work_fullname}
	# {work_email}
	# [Label]
	# O
	# [Choose a passphrase]
	gpg --expert --edit-key {work_keyid}
	addkey
	# ECC (set your own capabilities)
	# Only sign (toggle the others)
	# Curve 25519
	# 1y
	addkey
	# ECC (set your own capabilities)
	# Only authenticate (toggle the others)
	# Curve 25519
	# 1y
	addkey
	# ECC (encrypt only)
	# Curve 25519
	# 1y
	save

move_to_card:
	gpg --edit-key {work_keyid}
	keytocard
	# add signature subkey
	# add authentication subkey
	# add encryption subkey

reload:
	gpg-connect-agent "scd serialno" "learn --force" /bye

fingerprint:
	gpg --fingerprint

export_ssh_key:
	gpg --export-ssh-key {work_keyid}
	gpg -K --keyid-format short --with-keygrip
	# add auth keygrips to ~/.gnupg/sshcontrol