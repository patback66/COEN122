#max #assume passed into register r1, with length in r2
#first is current max, put in r0
#count current index r3
#loop
#sub current index with r2
#if 0 end
#get difference of current item and r0
#if neg, new item is
#jump to increase counter
#store current max in r0
#increase counter
#goto loop
#max in r0

max:
  LD r0,r1
  INC r3,r3

  loop:
    SUB r4,r2,r3
    BRZ end
    ADD r5,r1,r3
    LD r4,r5
    SUB r4,r4,r0
    BRN update
    LD r0,r5
  update:
    INC r3,r3
    J loop:
  end:

############

Max2:
  MAX r0,r1,r2
