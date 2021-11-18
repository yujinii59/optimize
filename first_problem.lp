\ Model Construction
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  start[18] + Constant
Subject To
 start_constr1_start: start[1] >= 0
 start_constr2_1: start[1] - start[2] <= -2
 start_constr3_2: start[2] - start[3] <= -16
 start_constr4_2: start[2] - start[4] <= -16
 start_constr5_3: start[3] - start[5] <= -9
 start_constr6_4: start[4] - start[6] <= -8
 start_constr6_5: start[5] - start[6] <= -10
 start_constr7_4: start[4] - start[7] <= -8
 start_constr8_6: start[6] - start[8] <= -6
 start_constr9_4: start[4] - start[9] <= -8
 start_constr9_6: start[6] - start[9] <= -6
 start_constr10_4: start[4] - start[10] <= -8
 start_constr11_6: start[6] - start[11] <= -6
 start_constr12_9: start[9] - start[12] <= -9
 start_constr13_7: start[7] - start[13] <= -2
 start_constr14_2: start[2] - start[14] <= -16
 start_constr15_4: start[4] - start[15] <= -8
 start_constr15_14: start[14] - start[15] <= -7
 start_constr16_8: start[8] - start[16] <= -2
 start_constr16_11: start[11] - start[16] <= -3
 start_constr16_14: start[14] - start[16] <= -7
 start_constr17_12: start[12] - start[17] <= -2
 start_constr18_17: start[17] - start[18] <= -9
Bounds
 Constant = 1
End
