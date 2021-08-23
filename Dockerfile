FROM homebrew/brew:latest
RUN export HOMEBREW_NO_AUTO_UPDATE=1 && brew install samtools genometools
