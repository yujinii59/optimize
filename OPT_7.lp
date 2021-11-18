\ Model load_balancing
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  maxweight - minweight
Subject To
 load_const_0: LOAD_1_1 + LOAD_1_2 + LOAD_1_3 = 1
 load_const_1: LOAD_1_4 + LOAD_1_5 + LOAD_1_6 = 1
 load_const_2: LOAD_1_7 + LOAD_1_8 + LOAD_1_9 = 1
 load_const_3: LOAD_1_10 + LOAD_1_11 + LOAD_1_12 = 1
 load_const_4: LOAD_1_13 + LOAD_1_14 + LOAD_1_15 = 1
 load_const_5: LOAD_1_16 + LOAD_2_1 + LOAD_2_2 = 1
 load_const_6: LOAD_2_3 + LOAD_2_4 + LOAD_2_5 = 1
 load_const_7: LOAD_2_6 + LOAD_2_7 + LOAD_2_8 = 1
 load_const_8: LOAD_2_9 + LOAD_2_10 + LOAD_2_11 = 1
 load_const_9: LOAD_2_12 + LOAD_2_13 + LOAD_2_14 = 1
 load_const_10: LOAD_2_15 + LOAD_2_16 + LOAD_3_1 = 1
 load_const_11: LOAD_3_2 + LOAD_3_3 + LOAD_3_4 = 1
 load_const_12: LOAD_3_5 + LOAD_3_6 + LOAD_3_7 = 1
 load_const_13: LOAD_3_8 + LOAD_3_9 + LOAD_3_10 = 1
 load_const_14: LOAD_3_11 + LOAD_3_12 + LOAD_3_13 = 1
 load_const_15: LOAD_3_14 + LOAD_3_15 + LOAD_3_16 = 1
 max_constr0: 34 LOAD_1_1 + 6 LOAD_1_4 + 8 LOAD_1_7 + 17 LOAD_1_10
   + 16 LOAD_1_13 + 5 LOAD_1_16 + 13 LOAD_2_3 + 21 LOAD_2_6 + 25 LOAD_2_9
   + 31 LOAD_2_12 + 14 LOAD_2_15 + 13 LOAD_3_2 + 33 LOAD_3_5 + 9 LOAD_3_8
   + 25 LOAD_3_11 + 25 LOAD_3_14 <= 100
 max_constr1: 34 LOAD_1_2 + 6 LOAD_1_5 + 8 LOAD_1_8 + 17 LOAD_1_11
   + 16 LOAD_1_14 + 5 LOAD_2_1 + 13 LOAD_2_4 + 21 LOAD_2_7 + 25 LOAD_2_10
   + 31 LOAD_2_13 + 14 LOAD_2_16 + 13 LOAD_3_3 + 33 LOAD_3_6 + 9 LOAD_3_9
   + 25 LOAD_3_12 + 25 LOAD_3_15 <= 100
 max_constr2: 34 LOAD_1_3 + 6 LOAD_1_6 + 8 LOAD_1_9 + 17 LOAD_1_12
   + 16 LOAD_1_15 + 5 LOAD_2_2 + 13 LOAD_2_5 + 21 LOAD_2_8 + 25 LOAD_2_11
   + 31 LOAD_2_14 + 14 LOAD_3_1 + 13 LOAD_3_4 + 33 LOAD_3_7 + 9 LOAD_3_10
   + 25 LOAD_3_13 + 25 LOAD_3_16 <= 100
 maxweight_constr0: maxweight - 34 LOAD_1_1 - 6 LOAD_1_4 - 8 LOAD_1_7
   - 17 LOAD_1_10 - 16 LOAD_1_13 - 5 LOAD_1_16 - 13 LOAD_2_3 - 21 LOAD_2_6
   - 25 LOAD_2_9 - 31 LOAD_2_12 - 14 LOAD_2_15 - 13 LOAD_3_2 - 33 LOAD_3_5
   - 9 LOAD_3_8 - 25 LOAD_3_11 - 25 LOAD_3_14 >= 0
 minweight_constr0: minweight - 34 LOAD_1_1 - 6 LOAD_1_4 - 8 LOAD_1_7
   - 17 LOAD_1_10 - 16 LOAD_1_13 - 5 LOAD_1_16 - 13 LOAD_2_3 - 21 LOAD_2_6
   - 25 LOAD_2_9 - 31 LOAD_2_12 - 14 LOAD_2_15 - 13 LOAD_3_2 - 33 LOAD_3_5
   - 9 LOAD_3_8 - 25 LOAD_3_11 - 25 LOAD_3_14 <= 0
 maxweight_constr1: maxweight - 34 LOAD_1_2 - 6 LOAD_1_5 - 8 LOAD_1_8
   - 17 LOAD_1_11 - 16 LOAD_1_14 - 5 LOAD_2_1 - 13 LOAD_2_4 - 21 LOAD_2_7
   - 25 LOAD_2_10 - 31 LOAD_2_13 - 14 LOAD_2_16 - 13 LOAD_3_3 - 33 LOAD_3_6
   - 9 LOAD_3_9 - 25 LOAD_3_12 - 25 LOAD_3_15 >= 0
 minweight_constr1: minweight - 34 LOAD_1_2 - 6 LOAD_1_5 - 8 LOAD_1_8
   - 17 LOAD_1_11 - 16 LOAD_1_14 - 5 LOAD_2_1 - 13 LOAD_2_4 - 21 LOAD_2_7
   - 25 LOAD_2_10 - 31 LOAD_2_13 - 14 LOAD_2_16 - 13 LOAD_3_3 - 33 LOAD_3_6
   - 9 LOAD_3_9 - 25 LOAD_3_12 - 25 LOAD_3_15 <= 0
 maxweight_constr2: maxweight - 34 LOAD_1_3 - 6 LOAD_1_6 - 8 LOAD_1_9
   - 17 LOAD_1_12 - 16 LOAD_1_15 - 5 LOAD_2_2 - 13 LOAD_2_5 - 21 LOAD_2_8
   - 25 LOAD_2_11 - 31 LOAD_2_14 - 14 LOAD_3_1 - 13 LOAD_3_4 - 33 LOAD_3_7
   - 9 LOAD_3_10 - 25 LOAD_3_13 - 25 LOAD_3_16 >= 0
 minweight_constr2: minweight - 34 LOAD_1_3 - 6 LOAD_1_6 - 8 LOAD_1_9
   - 17 LOAD_1_12 - 16 LOAD_1_15 - 5 LOAD_2_2 - 13 LOAD_2_5 - 21 LOAD_2_8
   - 25 LOAD_2_11 - 31 LOAD_2_14 - 14 LOAD_3_1 - 13 LOAD_3_4 - 33 LOAD_3_7
   - 9 LOAD_3_10 - 25 LOAD_3_13 - 25 LOAD_3_16 <= 0
Bounds
Binaries
 LOAD_1_1 LOAD_1_2 LOAD_1_3 LOAD_1_4 LOAD_1_5 LOAD_1_6 LOAD_1_7 LOAD_1_8
 LOAD_1_9 LOAD_1_10 LOAD_1_11 LOAD_1_12 LOAD_1_13 LOAD_1_14 LOAD_1_15
 LOAD_1_16 LOAD_2_1 LOAD_2_2 LOAD_2_3 LOAD_2_4 LOAD_2_5 LOAD_2_6 LOAD_2_7
 LOAD_2_8 LOAD_2_9 LOAD_2_10 LOAD_2_11 LOAD_2_12 LOAD_2_13 LOAD_2_14
 LOAD_2_15 LOAD_2_16 LOAD_3_1 LOAD_3_2 LOAD_3_3 LOAD_3_4 LOAD_3_5 LOAD_3_6
 LOAD_3_7 LOAD_3_8 LOAD_3_9 LOAD_3_10 LOAD_3_11 LOAD_3_12 LOAD_3_13
 LOAD_3_14 LOAD_3_15 LOAD_3_16
End
