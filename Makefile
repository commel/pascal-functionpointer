app:	main.pas
	fpc -vwnh -Mdelphi $< -o$@

PHONY: clean
clean:
	$(RM) app *.o ppas.sh link.res
