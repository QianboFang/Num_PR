function Me = getConst_Me(h)


Me=  [156  22*h  54    -13*h;...
       22*h 4*h*h 13*h -3*h*h;...
       54 13*h 156 -22*h;...
       -13*h -3*h*h -22*h 4*h*h].*(h/420);
end
