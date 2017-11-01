#include <iostream>
#include <string>

class FizzBuzz {

    private:
 
    template <class T>
        void print(const T & t){
        std::cout << t;
    }
 
    void printLine(){
        std::cout << std::endl;
    }
 
    void buzz(){
        print("Buzz");
    }
 
    void fizz(){
        print("Fizz");
    }
 
    void fizzBuzz(){
        fizz();
        buzz();
    }
 
    bool isFizz(const int & n){
        return n % 3 == 0;
    }
 
    bool isBuzz(const int & n){
        return n % 5 == 0;
    }
 
    void round(int n){
        if( isFizz(n) && isBuzz(n) )
            fizzBuzz();
        else if( isFizz(n) )
            fizz();
        else if ( isBuzz(n) )
            buzz();
        else
            print(n);
        printLine();
    }

    public:

    void play(int rounds){
        for(int i = 1; i <= rounds; i++){
            round(i);
        }
    }
};

int main()
{
    FizzBuzz fizzBuzz;
    fizzBuzz.play(100);
}