libsublime-imfix.so:sublime_imfix.c
	gcc -shared -o libsublime-imfix.so sublime_imfix.c `pkg-config --libs --cflags gtk+-2.0` -fPIC
install:libsublime-imfix.so
	sudo cp libsublime-imfix.so /usr/lib/
	sudo cp sublime_text.desktop /usr/share/applications/sublime_text.desktop
