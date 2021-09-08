FROM homebrew/brew:latest
ENV HOMEBREW_NO_AUTO_UPDATE=1
RUN brew tap brewsci/bio && brew install perl cpanm \
  samtools bcftools bwa datamash pigz htop glances \
  parallel && cpanm local::lib && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
RUN brew install vcftools diamond freebayes \
  lastz minimap2 muscle mrbayes raxml \
  prank bowtie2 mummer star-aligner subread last && \
  rm -rf /home/linuxbrew/.cache /home/linuxbrew/.cpanm \
         /home/linuxbrew/.bundle /home/linuxbrew/.gem
