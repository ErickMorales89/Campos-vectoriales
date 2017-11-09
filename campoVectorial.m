%%% CAMPO VECTORIAL
disp("\nPrograma para graficar campos vectoriales\n");
tipo = input("Define el tipo de la grafica.\n 1. Plano\n 2. Espacio\n>> ");

if(tipo==1)
  limitx = input("Ingresa el limite de X de la grafica \n limite de x= +/- ");
  limity = input("Ingresa el limite de Y de la grafica \n limite de y= +/- ");
  [x, y] = meshgrid(-limitx:limitx,-limity:limity);
  I = input("Ingresa el componente I del campo \n M = "); %Ingresa y
  J = input("Ingresa el componente J del campo \n N = "); %Ingresa -x
  fig = figure;
  quiver(x,y,I,J);
  title = "Campo vectorial f(x,y)";
  grid on;
endif
if(tipo==2)
  limitx = input("Ingresa el limite de X de la grafica \n limite de x= +/- ");
  limity = input("Ingresa el limite de Y de la grafica \n limite de y= +/- ");
  limitz = input("Ingresa el limite de Z de la grafica \n limite de z= +/- ");
  [x, y, z] = meshgrid(-limitx:limitx,-limity:limity,-limitz:limitz);
  I = input("Ingresa el componente I del campo \n M = "); % Ingresa x.*y.^2 
  J = input("Ingresa el componente J del campo \n N = "); % Ingresa x.*y 
  K = input("Ingresa el componente K del campo \n P = "); % Ingresa z
  fig = figure;
  quiver3(x,y,z,I,J,K);
  title = "Campo vectorial f(x,y,z)";
  grid on;
endif