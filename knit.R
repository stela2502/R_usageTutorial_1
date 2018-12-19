require(knitr)
require(rmarkdown)
require(tools)
fname = "index.Rmd"
if ( file_ext(fname) == 'Rmd' ){
   ofile = paste(tools::file_path_sans_ext(fname), 'html', sep='.' ) 
   rmarkdown::render(fname, 'html_document', ofile)
   fname = ofile
}else {
	knit2html(fname, paste(tools::file_path_sans_ext(fname), 'html', sep='.' ) )
}

