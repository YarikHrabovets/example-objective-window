APP_NAME = CocoaApp
SRC = main.mm AppDelegate.m

all: $(APP_NAME)

$(APP_NAME): $(SRC)
	clang++ -framework Cocoa -o $(APP_NAME) $(SRC)

clean:
	rm -f $(APP_NAME)
