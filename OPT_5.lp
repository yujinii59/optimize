\ Model scheduling
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  5 RANK_6[1] + 2 RANK_6[2] + 4 RANK_6[3] + 6 RANK_6[4] + 3 RANK_6[5]
   + 6 RANK_6[6] + START_6[3] + 0 WAIT_6[1] + 0 WAIT_6[2] + 0 WAIT_6[3]
   + 0 RANK1_1_1 + 0 RANK1_1_2 + 0 RANK1_1_3 + 0 RANK1_1_4 + 0 RANK1_1_5
   + 0 RANK1_1_6 + 0 RANK1_2_1 + 0 RANK1_2_2 + 0 RANK1_2_3 + 0 RANK1_2_4
   + 0 RANK1_2_5 + 0 RANK1_2_6 + 0 RANK1_3_1 + 0 RANK1_3_2 + 0 RANK1_3_3
   + 0 RANK1_3_4 + 0 RANK1_3_5 + 0 RANK1_3_6 + 0 RANK1_4_1 + 0 RANK1_4_2
   + 0 RANK1_4_3 + 0 RANK1_4_4 + 0 RANK1_4_5 + 0 RANK1_4_6 + 0 RANK1_5_1
   + 0 RANK1_5_2 + 0 RANK1_5_3 + 0 RANK1_5_4 + 0 RANK1_5_5 + 0 RANK1_5_6
   + 0 RANK1_6_1 + 0 RANK1_6_2 + 0 RANK1_6_3 + 0 RANK1_6_4 + 0 RANK1_6_5
   + 0 RANK1_6_6
Subject To
 R_row_1: RANK_1[1] + RANK_1[2] + RANK_1[3] + RANK_1[4] + RANK_1[5]
   + RANK_1[6] = 1
 R_column_1: RANK_1[1] + RANK_2[1] + RANK_3[1] + RANK_4[1] + RANK_5[1]
   + RANK_6[1] = 1
 R_row_2: RANK_2[1] + RANK_2[2] + RANK_2[3] + RANK_2[4] + RANK_2[5]
   + RANK_2[6] = 1
 R_column_2: RANK_1[2] + RANK_2[2] + RANK_3[2] + RANK_4[2] + RANK_5[2]
   + RANK_6[2] = 1
 R_row_3: RANK_3[1] + RANK_3[2] + RANK_3[3] + RANK_3[4] + RANK_3[5]
   + RANK_3[6] = 1
 R_column_3: RANK_1[3] + RANK_2[3] + RANK_3[3] + RANK_4[3] + RANK_5[3]
   + RANK_6[3] = 1
 R_row_4: RANK_4[1] + RANK_4[2] + RANK_4[3] + RANK_4[4] + RANK_4[5]
   + RANK_4[6] = 1
 R_column_4: RANK_1[4] + RANK_2[4] + RANK_3[4] + RANK_4[4] + RANK_5[4]
   + RANK_6[4] = 1
 R_row_5: RANK_5[1] + RANK_5[2] + RANK_5[3] + RANK_5[4] + RANK_5[5]
   + RANK_5[6] = 1
 R_column_5: RANK_1[5] + RANK_2[5] + RANK_3[5] + RANK_4[5] + RANK_5[5]
   + RANK_6[5] = 1
 R_row_6: RANK_6[1] + RANK_6[2] + RANK_6[3] + RANK_6[4] + RANK_6[5]
   + RANK_6[6] = 1
 R_column_6: RANK_1[6] + RANK_2[6] + RANK_3[6] + RANK_4[6] + RANK_5[6]
   + RANK_6[6] = 1
 constr1_11: 3 RANK_1[1] + 6 RANK_1[2] + 3 RANK_1[3] + 5 RANK_1[4]
   + 5 RANK_1[5] + 7 RANK_1[6] + START_1[1] + WAIT_1[1] - START_2[1] = 0
 constr2_11: 3 RANK_1[1] + 6 RANK_1[2] + 3 RANK_1[3] + 5 RANK_1[4]
   + 5 RANK_1[5] + 7 RANK_1[6] + START_1[1] - START_1[2] <= 0
 constr1_12: 5 RANK_1[1] + 4 RANK_1[2] + 2 RANK_1[3] + 4 RANK_1[4]
   + 4 RANK_1[5] + 5 RANK_1[6] + START_1[2] + WAIT_1[2] - START_2[2] = 0
 constr2_12: 5 RANK_1[1] + 4 RANK_1[2] + 2 RANK_1[3] + 4 RANK_1[4]
   + 4 RANK_1[5] + 5 RANK_1[6] + START_1[2] - START_1[3] <= 0
 constr1_13: 5 RANK_1[1] + 2 RANK_1[2] + 4 RANK_1[3] + 6 RANK_1[4]
   + 3 RANK_1[5] + 6 RANK_1[6] + START_1[3] + WAIT_1[3] - START_2[3] = 0
 constr1_21: 3 RANK_2[1] + 6 RANK_2[2] + 3 RANK_2[3] + 5 RANK_2[4]
   + 5 RANK_2[5] + 7 RANK_2[6] + START_2[1] + WAIT_2[1] - START_3[1] = 0
 constr2_21: 3 RANK_2[1] + 6 RANK_2[2] + 3 RANK_2[3] + 5 RANK_2[4]
   + 5 RANK_2[5] + 7 RANK_2[6] + START_2[1] - START_2[2] <= 0
 constr1_22: 5 RANK_2[1] + 4 RANK_2[2] + 2 RANK_2[3] + 4 RANK_2[4]
   + 4 RANK_2[5] + 5 RANK_2[6] + START_2[2] + WAIT_2[2] - START_3[2] = 0
 constr2_22: 5 RANK_2[1] + 4 RANK_2[2] + 2 RANK_2[3] + 4 RANK_2[4]
   + 4 RANK_2[5] + 5 RANK_2[6] + START_2[2] - START_2[3] <= 0
 constr1_23: 5 RANK_2[1] + 2 RANK_2[2] + 4 RANK_2[3] + 6 RANK_2[4]
   + 3 RANK_2[5] + 6 RANK_2[6] + START_2[3] + WAIT_2[3] - START_3[3] = 0
 constr1_31: 3 RANK_3[1] + 6 RANK_3[2] + 3 RANK_3[3] + 5 RANK_3[4]
   + 5 RANK_3[5] + 7 RANK_3[6] + START_3[1] + WAIT_3[1] - START_4[1] = 0
 constr2_31: 3 RANK_3[1] + 6 RANK_3[2] + 3 RANK_3[3] + 5 RANK_3[4]
   + 5 RANK_3[5] + 7 RANK_3[6] + START_3[1] - START_3[2] <= 0
 constr1_32: 5 RANK_3[1] + 4 RANK_3[2] + 2 RANK_3[3] + 4 RANK_3[4]
   + 4 RANK_3[5] + 5 RANK_3[6] + START_3[2] + WAIT_3[2] - START_4[2] = 0
 constr2_32: 5 RANK_3[1] + 4 RANK_3[2] + 2 RANK_3[3] + 4 RANK_3[4]
   + 4 RANK_3[5] + 5 RANK_3[6] + START_3[2] - START_3[3] <= 0
 constr1_33: 5 RANK_3[1] + 2 RANK_3[2] + 4 RANK_3[3] + 6 RANK_3[4]
   + 3 RANK_3[5] + 6 RANK_3[6] + START_3[3] + WAIT_3[3] - START_4[3] = 0
 constr1_41: 3 RANK_4[1] + 6 RANK_4[2] + 3 RANK_4[3] + 5 RANK_4[4]
   + 5 RANK_4[5] + 7 RANK_4[6] + START_4[1] + WAIT_4[1] - START_5[1] = 0
 constr2_41: 3 RANK_4[1] + 6 RANK_4[2] + 3 RANK_4[3] + 5 RANK_4[4]
   + 5 RANK_4[5] + 7 RANK_4[6] + START_4[1] - START_4[2] <= 0
 constr1_42: 5 RANK_4[1] + 4 RANK_4[2] + 2 RANK_4[3] + 4 RANK_4[4]
   + 4 RANK_4[5] + 5 RANK_4[6] + START_4[2] + WAIT_4[2] - START_5[2] = 0
 constr2_42: 5 RANK_4[1] + 4 RANK_4[2] + 2 RANK_4[3] + 4 RANK_4[4]
   + 4 RANK_4[5] + 5 RANK_4[6] + START_4[2] - START_4[3] <= 0
 constr1_43: 5 RANK_4[1] + 2 RANK_4[2] + 4 RANK_4[3] + 6 RANK_4[4]
   + 3 RANK_4[5] + 6 RANK_4[6] + START_4[3] + WAIT_4[3] - START_5[3] = 0
 constr1_51: 3 RANK_5[1] + 6 RANK_5[2] + 3 RANK_5[3] + 5 RANK_5[4]
   + 5 RANK_5[5] + 7 RANK_5[6] + START_5[1] + WAIT_5[1] - START_6[1] = 0
 constr2_51: 3 RANK_5[1] + 6 RANK_5[2] + 3 RANK_5[3] + 5 RANK_5[4]
   + 5 RANK_5[5] + 7 RANK_5[6] + START_5[1] - START_5[2] <= 0
 constr1_52: 5 RANK_5[1] + 4 RANK_5[2] + 2 RANK_5[3] + 4 RANK_5[4]
   + 4 RANK_5[5] + 5 RANK_5[6] + START_5[2] + WAIT_5[2] - START_6[2] = 0
 constr2_52: 5 RANK_5[1] + 4 RANK_5[2] + 2 RANK_5[3] + 4 RANK_5[4]
   + 4 RANK_5[5] + 5 RANK_5[6] + START_5[2] - START_5[3] <= 0
 constr1_53: 5 RANK_5[1] + 2 RANK_5[2] + 4 RANK_5[3] + 6 RANK_5[4]
   + 3 RANK_5[5] + 6 RANK_5[6] + START_5[3] + WAIT_5[3] - START_6[3] = 0
 constr2_61: 3 RANK_6[1] + 6 RANK_6[2] + 3 RANK_6[3] + 5 RANK_6[4]
   + 5 RANK_6[5] + 7 RANK_6[6] + START_6[1] - START_6[2] <= 0
 constr2_62: 5 RANK_6[1] + 4 RANK_6[2] + 2 RANK_6[3] + 4 RANK_6[4]
   + 4 RANK_6[5] + 5 RANK_6[6] + START_6[2] - START_6[3] <= 0
Bounds
Binaries
 RANK_1[1] RANK_1[2] RANK_1[3] RANK_1[4] RANK_1[5] RANK_1[6] RANK_2[1]
 RANK_2[2] RANK_2[3] RANK_2[4] RANK_2[5] RANK_2[6] RANK_3[1] RANK_3[2]
 RANK_3[3] RANK_3[4] RANK_3[5] RANK_3[6] RANK_4[1] RANK_4[2] RANK_4[3]
 RANK_4[4] RANK_4[5] RANK_4[6] RANK_5[1] RANK_5[2] RANK_5[3] RANK_5[4]
 RANK_5[5] RANK_5[6] RANK_6[1] RANK_6[2] RANK_6[3] RANK_6[4] RANK_6[5]
 RANK_6[6] RANK1_1_1 RANK1_1_2 RANK1_1_3 RANK1_1_4 RANK1_1_5 RANK1_1_6
 RANK1_2_1 RANK1_2_2 RANK1_2_3 RANK1_2_4 RANK1_2_5 RANK1_2_6 RANK1_3_1
 RANK1_3_2 RANK1_3_3 RANK1_3_4 RANK1_3_5 RANK1_3_6 RANK1_4_1 RANK1_4_2
 RANK1_4_3 RANK1_4_4 RANK1_4_5 RANK1_4_6 RANK1_5_1 RANK1_5_2 RANK1_5_3
 RANK1_5_4 RANK1_5_5 RANK1_5_6 RANK1_6_1 RANK1_6_2 RANK1_6_3 RANK1_6_4
 RANK1_6_5 RANK1_6_6
End
