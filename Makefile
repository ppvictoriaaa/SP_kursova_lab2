CXX = g++
CXXFLAGS = -Wall -Wextra -I.

# Вихідні файли
OBJECTS = calculator.o main.o
TARGET = calculator_app.exe
LIBRARY = libmycalculator.a

# Правила
all: $(LIBRARY) $(TARGET)

# Збірка бібліотеки
$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

# Збірка виконуваного файлу
$(TARGET): $(OBJECTS) $(LIBRARY)
	$(CXX) -o $(TARGET) main.o -L. -lmycalculator

# Правило для компіляції .cpp файлів у .o файли
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Очищення
clean:
	del $(OBJECTS) $(TARGET) $(LIBRARY)
