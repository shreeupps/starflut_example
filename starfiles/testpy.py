def tt(a,b) :
    print(a,b)
    return 666,777
g1 = 123

def yy(a) :
    print(a)
    return a + "returned from python script"

class Multiply :
    def __init__(self,x,y) :
        self.a = x
        self.b = y

    def multiply(self,a,b):
        print("multiply....",self,a,b)
        return a * b