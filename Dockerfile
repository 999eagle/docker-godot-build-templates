FROM 999eagle/docker-godot-build-mono-glue

RUN	cd /build/godot-src/src && \
	scons platform=x11 target=release_debug tools=no bits=64 module_mono_enabled=yes && \
	scons platform=x11 target=release tools=no bits=64 module_mono_enabled=yes
