FROM alpine:3.17

# Create the workshop
RUN apk add bash curl wget dbus udev tar xz unzip
# Install the machinery
RUN apk add build-base libffi-dev glib-dev
# Add some tools
RUN apk add libgpiod jq vim dtc

# Do the most sensible thing when the container is started manually with `docker run -it` (ie. drop straight into the shell).
# The service can then be left running with ctrl-P, ctrl-Q, and later re-attached with docker attach.
# Alas when run from docker-compose, will simply provide a useless process for docker-compose to log. In that case there's
# nothing to attach to so you will still need to exec a new bash process to get a shell.
CMD ["/bin/bash"]

