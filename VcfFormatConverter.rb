require "java"

java_import "net.sf.picard.vcf.VcfFormatConverter"

vcfFC = VcfFormatConverter.new
vcfFC.instanceMainWithExit(ARGV)

