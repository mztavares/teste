p = int(input('Digite o valor do peso: '))
s = S(input('Determine o sexo da pessoa (masc/fem)'))
a = int(input('Digite o valor da altura:'))

R = p/(a*a)

#feminino
if (R<19) and (s=fem):
    print(f'a pessoa está abaixo do peso  {R}')

elif (R>19) and (R< 24):
    print(f' a pessoa está no peso ideal {R}')

else:
    print(f'a pessoa está acima do peso {R}')
    
#masculino
if  ((R <20) and (s=masc)):
    print(f'a pessoa está abaixo do peso  {R}')

elif ((R>20) and (R< 25)):
    print(f' a pessoa está no peso ideal {R}')

else:
    print(f'a pessoa está acima do peso {R}')
