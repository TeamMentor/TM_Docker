FROM tm-node

WORKDIR root

RUN     git clone https://github.com/TeamMentor/TM.git
WORKDIR TM
RUN     bin/npm_install.sh
RUN     git checkout Dev

EXPOSE 12345
#EXPOSE 1332

CMD ["./bin/start-servers"]
