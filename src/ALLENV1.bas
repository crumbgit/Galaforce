    0 REM SAVE":2.ALLENV1"
   10REM Galaforce Envelopes
   20REM 12/4/86
   30REM
   40REM Sound FX envelopes
   50 
   60 ENVELOPE 1,1,-2,0,0,255,0,0,0,0,0,-100,0,0:REM Blowing up an alien
   70 ENVELOPE 2,1,-100,+124,0,12,12,0,126,-2,-1,-10,100,20:REM Firing
   80 ENVELOPE 3,6,+8,+8,-16,2,1,1,+126,-5,-2,-6,106,90:REM Xtra man
   90 
  100 
  110REM Tune Envelopes
  120 
  130 ENVELOPE 4,2,+1,-1,+1,2,4,2,10,-1,0,-1,106,70
  140 ENVELOPE 5,2,+1,-1,+1,2,4,2,126,-1,0,-3,106,80
  150 ENVELOPE 6,0,0,0,0,0,0,0,126,-3,0,-10,106,60
  160 ENVELOPE 7,5,0,-1,0,7,255,0,126,-4,0,-6,106,40
  170 ENVELOPE 8,3,+20,0,-1,1,7,255,126,-5,-1,-2,106,30
  180 
  190REM Sound FX envelopes cont.
  200 
  210 ENVELOPE 9,3,+12,+16,-28,1,1,1,+126,-3,-3,-10,106,90:REM Last man
  220 *GAME