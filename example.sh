#start textedit using shortcuts (apple space toggles my quicksilver)
cliclick  "kd:cmd,space" 
sleep 1
cliclick "kd:t,e,x,t,e,return"
sleep 2


#start typing in textedit magically!
for (( c=1; c<=5; c++ ))
do
  cliclick -m verbose c:250,300 kd:h,e,l,l,o,space,w,o,r,l,d,space
  sleep 1
done

