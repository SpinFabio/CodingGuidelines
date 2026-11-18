.DEFAULT_GOAL := help
.PHONY: help push

help:
	@printf '%s\n' 'make push  Publish main to SpinFabio/CodingGuidelines via HTTPS.'

push:
	@url=$$(git remote get-url --push --all origin) || exit 1; \
	if [ "$$url" != 'https://github.com/SpinFabio/CodingGuidelines.git' ]; then \
		printf '%s\n' 'Push cancelled: origin must point only to https://github.com/SpinFabio/CodingGuidelines.git' >&2; \
		exit 1; \
	fi
	@GIT_TERMINAL_PROMPT=0 GIT_ASKPASS=/bin/false git \
		-c credential.helper= \
		-c credential.useHttpPath=true \
		-c http.followRedirects=false \
		-c 'credential.https://github.com/SpinFabio/CodingGuidelines.git.helper=!f() { \
			[ "$$1" = get ] || return 0; \
			token=$$(sed -n "s/^githubtoken=//p" .env) || return 1; \
			case "$$token" in \
				""|*[!a-zA-Z0-9_]*) printf "%s\n" "Set a single unquoted githubtoken=TOKEN line in .env." >&2; return 1 ;; \
			esac; \
			printf "username=SpinFabio\npassword=%s\n" "$$token"; \
		}; f' \
		push --set-upstream origin refs/heads/main:refs/heads/main
