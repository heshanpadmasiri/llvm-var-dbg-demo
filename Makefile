ll_files=$(wildcard ./*.ll)
target_files=$(addsuffix .exe, $(basename $(ll_files)))

build: $(target_files)

%.o: %.ll
	llc-12 -filetype=obj $< -o $@

%.exe: %.o
	clang-10 -g $< -o $@

clean:
	rm -rf *.exe
	rm -rf *.o
