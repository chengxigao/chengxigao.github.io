DOCS=index papers teaching services bio academiclink projects patents group

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix ./, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)



./%.html : %.jemdoc MENU
	# ./jemdoc -c mysite.conf *.jemdoc
	./jemdoc.py -c mysite.conf -o $@ $<

.PHONY : clean
clean :
	-rm -f ./*.html
