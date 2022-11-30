FROM kasmweb/core-ubuntu-jammy:1.12.0
USER root

ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV TMP_SCRIPTS $STARTUPDIR/tmp
WORKDIR $HOME

######### Begin Installation ###########
# Copy installation files
COPY ./install $TMP_SCRIPTS/

# Install tools
RUN bash $TMP_SCRIPTS/tools/install.sh
RUN bash $TMP_SCRIPTS/tools/install-smb.sh
RUN bash $TMP_SCRIPTS/tools/install-terraform.sh

# Install Discord
RUN bash $TMP_SCRIPTS/discord/install.sh

# Install Firefox
RUN bash $TMP_SCRIPTS/firefox/install.sh

# Install Microsoft Edge
RUN bash $TMP_SCRIPTS/edge/install.sh

# Install NextCloud
RUN bash $TMP_SCRIPTS/nextcloud/install.sh

# Install Only Office
RUN bash $TMP_SCRIPTS/only_office/install.sh

# Install Postman
RUN bash $TMP_SCRIPTS/postman/install.sh

# Install Slack
RUN bash $TMP_SCRIPTS/slack/install.sh

# Install VS Code
RUN bash $TMP_SCRIPTS/vs_code/install.sh

# Cleanup installation files
RUN rm -rf $TMP_SCRIPTS
######### End Installation ###########

######### Begin Configuration ###########

### Copy configuration files
COPY ./configure $TMP_SCRIPTS/

### Set wallpaper
RUN bash $TMP_SCRIPTS/wallpaper/configure.sh

# Cleanup configuration files
RUN rm -rf $TMP_SCRIPTS

######### End Configuration ###########

RUN chown 1000:0 $HOME
RUN $STARTUPDIR/set_user_permission.sh $HOME

ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000
