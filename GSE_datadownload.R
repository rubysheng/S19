source("http://www.bioconductor.org/biocLite.R")
biocLite("GEOquery")
library(GEOquery)



gse13428 = getGEO("GSE13428", GSEMatrix =TRUE, destdir = ".", getGPL = T, AnnotGPL = T)

exprSet_gse13428 = exprs(gse13428[[1]])
head(exprSet_gse13428,2)
#View(exprSet_gse13428)
#colnames(exprSet_gse13428);rownames(exprSet_gse13428)

write.table(exprSet_gse13428, file = "exprInfor_gse13428.csv", quote = FALSE, sep = ",", row.names = GeneInfo_gse13428$ID, col.names = SampleInfo_gse13428$title)


SampleInfo_gse13428 = pData(gse13428[[1]])
head(SampleInfo_gse13428,2)
View(SampleInfo_gse13428)


GeneInfo_gse13428 = fData(gse13428[[1]])
head(GeneInfo_gse13428,2)
View(GeneInfo_gse13428)


