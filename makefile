##  makefile for crypt-prompt

all: crypt-prompt.hook crypt-prompt.install crypt-prompt.txt

install: crypt-prompt.hook crypt-prompt.install crypt-prompt.txt
	install -D -m 644 "crypt-prompt.hook" \
		"/usr/lib/initcpio/hooks/crypt-prompt"
	install -D -m 644 "crypt-prompt.install" \
		"/usr/lib/initcpio/install/crypt-prompt"
	install -D -m 644 "crypt-prompt.txt" \
		"/etc/crypt-prompt"

uninstall:
	rm -f "/usr/lib/initcpio/hooks/crypt-prompt"
	rm -f "/usr/lib/initcpio/install/crypt-prompt"
	rm -f "/etc/crypt-prompt"
