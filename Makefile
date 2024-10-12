CXX = g++
CXXFLAGS = -Wall -Wextra -I.

OBJECTS = calculator.o main.o
TARGET = calculator_app.exe
LIBRARY = libmycalculator.a

all: $(LIBRARY) $(TARGET)

# Збірка бібліотеки
$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

# Збірка виконуваного файлу
$(TARGET): $(OBJECTS) $(LIBRARY)
	$(CXX) -o $(TARGET) main.o -L. -lmycalculator

# Правило для компіляції
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	del $(OBJECTS) $(TARGET) $(LIBRARY)

.PHONY: all clean
