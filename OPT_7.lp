\ Model load_balancing
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  maxweight
Subject To
 load_constr_0: load_constr[1,1] + load_constr[1,2] + load_constr[1,3] = 1
 load_constr_1: load_constr[2,1] + load_constr[2,2] + load_constr[2,3] = 1
 load_constr_2: load_constr[3,1] + load_constr[3,2] + load_constr[3,3] = 1
 load_constr_3: load_constr[4,1] + load_constr[4,2] + load_constr[4,3] = 1
 load_constr_4: load_constr[5,1] + load_constr[5,2] + load_constr[5,3] = 1
 load_constr_5: load_constr[6,1] + load_constr[6,2] + load_constr[6,3] = 1
 load_constr_6: load_constr[7,1] + load_constr[7,2] + load_constr[7,3] = 1
 load_constr_7: load_constr[8,1] + load_constr[8,2] + load_constr[8,3] = 1
 load_constr_8: load_constr[9,1] + load_constr[9,2] + load_constr[9,3] = 1
 load_constr_9: load_constr[10,1] + load_constr[10,2] + load_constr[10,3]
   = 1
 load_constr_10: load_constr[11,1] + load_constr[11,2] + load_constr[11,3]
   = 1
 load_constr_11: load_constr[12,1] + load_constr[12,2] + load_constr[12,3]
   = 1
 load_constr_12: load_constr[13,1] + load_constr[13,2] + load_constr[13,3]
   = 1
 load_constr_13: load_constr[14,1] + load_constr[14,2] + load_constr[14,3]
   = 1
 load_constr_14: load_constr[15,1] + load_constr[15,2] + load_constr[15,3]
   = 1
 load_constr_15: load_constr[16,1] + load_constr[16,2] + load_constr[16,3]
   = 1
 max_constr0: - maxweight + 34 load_constr[1,1] + 6 load_constr[2,1]
   + 8 load_constr[3,1] + 17 load_constr[4,1] + 16 load_constr[5,1]
   + 5 load_constr[6,1] + 13 load_constr[7,1] + 21 load_constr[8,1]
   + 25 load_constr[9,1] + 31 load_constr[10,1] + 14 load_constr[11,1]
   + 13 load_constr[12,1] + 33 load_constr[13,1] + 9 load_constr[14,1]
   + 25 load_constr[15,1] + 25 load_constr[16,1] <= 0
 max_constr1: - maxweight + 34 load_constr[1,2] + 6 load_constr[2,2]
   + 8 load_constr[3,2] + 17 load_constr[4,2] + 16 load_constr[5,2]
   + 5 load_constr[6,2] + 13 load_constr[7,2] + 21 load_constr[8,2]
   + 25 load_constr[9,2] + 31 load_constr[10,2] + 14 load_constr[11,2]
   + 13 load_constr[12,2] + 33 load_constr[13,2] + 9 load_constr[14,2]
   + 25 load_constr[15,2] + 25 load_constr[16,2] <= 0
 max_constr2: - maxweight + 34 load_constr[1,3] + 6 load_constr[2,3]
   + 8 load_constr[3,3] + 17 load_constr[4,3] + 16 load_constr[5,3]
   + 5 load_constr[6,3] + 13 load_constr[7,3] + 21 load_constr[8,3]
   + 25 load_constr[9,3] + 31 load_constr[10,3] + 14 load_constr[11,3]
   + 13 load_constr[12,3] + 33 load_constr[13,3] + 9 load_constr[14,3]
   + 25 load_constr[15,3] + 25 load_constr[16,3] <= 0
 maxweight_constr: maxweight <= 100
Bounds
Binaries
 load_constr[1,1] load_constr[1,2] load_constr[1,3] load_constr[2,1]
 load_constr[2,2] load_constr[2,3] load_constr[3,1] load_constr[3,2]
 load_constr[3,3] load_constr[4,1] load_constr[4,2] load_constr[4,3]
 load_constr[5,1] load_constr[5,2] load_constr[5,3] load_constr[6,1]
 load_constr[6,2] load_constr[6,3] load_constr[7,1] load_constr[7,2]
 load_constr[7,3] load_constr[8,1] load_constr[8,2] load_constr[8,3]
 load_constr[9,1] load_constr[9,2] load_constr[9,3] load_constr[10,1]
 load_constr[10,2] load_constr[10,3] load_constr[11,1] load_constr[11,2]
 load_constr[11,3] load_constr[12,1] load_constr[12,2] load_constr[12,3]
 load_constr[13,1] load_constr[13,2] load_constr[13,3] load_constr[14,1]
 load_constr[14,2] load_constr[14,3] load_constr[15,1] load_constr[15,2]
 load_constr[15,3] load_constr[16,1] load_constr[16,2] load_constr[16,3]
End
