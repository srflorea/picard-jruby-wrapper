require "java"

java_import "org.broadinstitute.variant.vcf.VCFFileReader"
java_import "net.sf.samtools.util.CloseableIterator"
java_import "org.broadinstitute.variant.variantcontext.VariantContext"

input = java.io.File.new(ARGV[0])
vcfFR = VCFFileReader.new(input, false)
iterator = vcfFR.iterator

nr = 1
while iterator.hasNext do
	puts "SNP nr: #{nr}"
	next_variant = iterator.next
	alleles =  next_variant.getAlleles

	alleles_it = alleles.iterator
	while alleles_it.hasNext
		puts "\tallele bases: #{alleles_it.next.getDisplayBases}"
	end

	nr = nr + 1
end
