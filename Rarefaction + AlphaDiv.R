if(!requireNamespace("BiocManager")){
  install.packages("BiocManager")
}
BiocManager::install("phyloseq")

library("phyloseq")

### Rarefaction ###
ds <- import_biom("/Users/tommyauchtung/Desktop/CDC1+2BRsamples+controls.0.01.NoBleed.biom")
dsr <- rarefy_even_depth(ds, 6331)


### Calculate alpha diversity ###
ds <- import_biom("/Users/tommyauchtung/Desktop/CDC1+2BRsamples+controls.0.01.NoBleed.r6331.biom")
adiv <- estimate_richness(ds)
write.table(adiv, "/Users/tommyauchtung/Desktop/alphadivvalues.txt", sep="\t")

