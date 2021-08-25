FROM homebrew/brew:latest
ENV HOMEBREW_NO_AUTO_UPDATE=1
RUN brew tap brewsci/bio && brew install \
  samtools genometools bcftools vcftools \
  diamond freebayes lastz minimap2 muscle mrbayes raxml igv \
  brewsci/bio/star-aligner mafft prank bowtie2 bwa \
  mummer datamash pigz pixz p7zip htop glances parallel \
  cpanm brewsci/bio/bioperl
