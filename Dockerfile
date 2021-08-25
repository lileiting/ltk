FROM homebrew/brew:latest
RUN export HOMEBREW_NO_AUTO_UPDATE=1 && brew tap brewsci/bio && \
  brew install samtools genometools bcftools vcftools \
  diamond freebayes lastz minimap2 muscle mrbayes raxml igv \
  brewsci/bio/star-aligner mafft prank bowtie2 bwa seqkit \
  mummer datamash pigz pixz p7zip htop glances parallel \
  cpanm brewsci/bio/bioperl && \
  cpanm Array::Split Authen::SASL Bio::DB::HTS \
  Data::Dump Data::Printer Email::Stuffer Excel::CloneXLSX::Format \
  Excel::Writer::XLSX File::Which HTTP::Request::Common LWP::UserAgent \
  List::Util MIME::Base64 Number::Format Parallel::ForkManager \
  Slurp Spreadsheet::ParseExcel Spreadsheet::ParseXLSX Spreadsheet::XLSX \
  Statistics::Basic Statistics::Distributions Statistics::Multtest \
  Sys::CpuAffinity TOML Text::CSV Text::Levenshtein \
  Text::NSP Time::Elapse URI::Escape \
  UUID XML::Simple
