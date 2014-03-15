require "java"

java_import "java.util.TreeSet"
java_import "net.sf.picard.vcf.VcfFormatConverter"

puts VcfFormatConverter.attributes
