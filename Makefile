# Makefile for cliclick by Walter Schreppers
# Just run 
# make -> to create cliclick executable no x-code needed only the command line tools!
# make clean -> clean everything
# sudo make install -> build + install in /usr/local/bin
INSTALL_DIR = /usr/local/bin
CC = cc 
CFLAGS = -include cliclick_Prefix.pch -I Actions

cliclick: Actions/ClickAction.o Actions/DoubleclickAction.o Actions/KeyBaseAction.o Actions/KeyDownAction.o Actions/KeyPressAction.o Actions/KeyUpAction.o Actions/MouseBaseAction.o Actions/MoveAction.o Actions/PrintAction.o Actions/TripleclickAction.o Actions/WaitAction.o ActionExecutor.o cliclick.o
	gcc -o cliclick $^ -framework Cocoa
	@echo "\n-------------------------------------------------------------------------------------------"
	@echo "Congratulations you now have cliclick binary. Run ./cliclick -h for some help. "
	@echo "  You can also run xcodebuild and have the executable in build/Release"
	@echo "  sudo make install    : install cliclick in ".$(INSTALL_DIR). "after which you can run cliclick anywhere."
	@echo "  make clean           : remove all objects and binaries from your build "
	@echo "  sudo make uninstall  : remove installed binary from ".$(INSTALL_DIR)
	@echo "-------------------------------------------------------------------------------------------\n"

install: cliclick
	cp cliclick $(INSTALL_DIR)/

uninstall:
	@rm -vf $(INSTALL_DIR)/cliclick

clean:
	@rm -vf *.o Actions/*.o *~
	@rm -vf cliclick
	@rm -rvf build


