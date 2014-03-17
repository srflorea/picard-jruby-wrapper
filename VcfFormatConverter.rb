require "java"

java_import "org.broadinstitute.variant.vcf.VCFFileReader"
java_import "net.sf.samtools.util.CloseableIterator"
java_import "org.broadinstitute.variant.variantcontext.VariantContext"
java_import "java.io.File"

input = File.new(ARGV[0])

vcfFR = VCFFileReader.new(input, false)
iterator = vcfFR.iterator

nr = 0
while iterator.hasNext do
	next_variant = iterator.next
	alleles =  next_variant.getAlleles
	nr = nr + 1
end

puts "nr este #{nr}"
