class Father:
    def father_quality(self):
        print('inside Father class')
        print(
'Father has intelligence and deep thinking power') 
        print('\n')
    def father_nature(self):
        print('inside Father class')
        print('Father is strict in principle')
        print('\n')
fazlu = Father()
class Mother:
    def mother_quality(self):
        print('inside Mother class')
        print('Mother is a good cooker')
        print('\n')
    def mother_nature(self):
        print('inside Mother class')
        print('Mother has soft mind')
        print('\n')
firuja = Mother()
class Son(Father, Mother):
    def son_quality(self):
        print('inside Son class')
        print(
'son has deep knowledge about Islamic law')
        print('\n')
salman = Son()
salman.father_quality()
salman.father_nature()
salman.mother_quality()
salman.mother_nature()
salman.son_quality()