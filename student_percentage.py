class StudentResult:
    def __init__(self):
        self.__marks = []
        self.__total = 0
        self.__per = 0

    def studentData(self):
        print("Enter marks of five subjects: ")
        for i in range(3):
            self.__marks.append(int(input("Subject " + str(i + 1) + ": ")))

    def calTotalMarks(self):
        for x in self.__marks:
            self.__total += x

    def calPercentage(self):
        self.__per = self.__total / 3
    def showStudent(self):
        self.studentData()
        self.calTotalMarks()
        self.calPercentage()
        print( self.__total, "\t\t", self.__per)



def main():
    # object is created for StudentResult
    s = StudentResult()
    s.showStudent()


if __name__ == "__main__":
    main()

