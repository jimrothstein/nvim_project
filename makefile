# comment
begin : $(info $(VIMRC)) $(origin VIMRC)
	objects =  sillyfile jim junk 	# delete when "clean"
# FOO=bar
# $(info $(shell printenv | grep tmux))
notready:
	FOO = foo
	BAR = bar
	FOOBAR = $(FOO) $(BAR)
	$(info $(FOO) $(origin FOO))
all: $(FOOBAR)
# clean: rm $(objects)
install:
	@echo install
clean:
	@echo clean
	rm OBJECTS
	ls -la
	
touch:
	@echo touch not ready
sillyfile:
	touch sillyfile
	ls -la *
env:
	@echo $(env)	# fix this!
	@echo "========"
	@echo FOO is $(FOO)
	@echo "========"
try1:	sillyfile
	ls -la sillyfile*
