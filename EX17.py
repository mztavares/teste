p = int(input('Digite o valor do p: '))
s = S(input('Determine o sexo da pessoa (masculino/feminino)'))
a = int(input('Digite o valor da altura:'))

R = p/(a*a)

#feminino
if (R<19) and (s=feminino):
    print(f'a pessoa está abaixo do p  {R}')

elif (R>19) and (R< 24):
    print(f' a pessoa está no peso ideal {R}')

else:
    print(f'a pessoa está acima do p {R}')
    
#masculino
if  ((R <20) and (s=masculino)):
    print(f'a pessoa está abaixo do p  {R}')

elif ((R>20) and (R< 25)):
    print(f' a pessoa está no peso ideal {R}')

else:
    print(f'a pessoa está acima do p {R}')
