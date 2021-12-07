\ Model barge_loading
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  20 load_var[1] + 5 load_var[2] + 15 load_var[3]
   + 8.888888888888886 load_var[4] + 7 load_var[5] + 10 load_var[6]
   + 11.66666666666667 load_var[7]
Subject To
 load_sum_constr: load_var[1] + load_var[2] + load_var[3] + load_var[4]
   + load_var[5] + load_var[6] + load_var[7] = 1500
 load_constr1: load_var[1] >= 0
 load_constr2: load_var[2] >= 0
 load_constr3: load_var[3] >= 0
 load_constr4: load_var[4] >= 0
 load_constr5: load_var[5] >= 0
 load_constr6: load_var[6] >= 0
 load_constr7: load_var[7] >= 0
Bounds
End
