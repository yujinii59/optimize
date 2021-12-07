\ Model barge_loading
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  0 load_var[1] + 0 load_var[2] + 0 load_var[3] + 0 load_var[4]
   + 0 load_var[5] + 0 load_var[6] + 0 load_var[7] + 200 load_int_var[1]
   + 40 load_int_var[2] + 90 load_int_var[3] + 80 load_int_var[4]
   + 105 load_int_var[5] + 100 load_int_var[6] + 140 load_int_var[7]
Subject To
 load_int_sum_constr: 10 load_int_var[1] + 8 load_int_var[2]
   + 6 load_int_var[3] + 9 load_int_var[4] + 15 load_int_var[5]
   + 10 load_int_var[6] + 12 load_int_var[7] = 1500
 load_int_constr1: load_int_var[1] >= 0
 load_constr21: load_int_var[1] <= 12
 load_int_constr2: load_int_var[2] >= 0
 load_constr22: load_int_var[2] <= 31
 load_int_constr3: load_int_var[3] >= 0
 load_constr23: load_int_var[3] <= 20
 load_int_constr4: load_int_var[4] >= 0
 load_constr24: load_int_var[4] <= 25
 load_int_constr5: load_int_var[5] >= 0
 load_constr25: load_int_var[5] <= 50
 load_int_constr6: load_int_var[6] >= 0
 load_constr26: load_int_var[6] <= 40
 load_int_constr7: load_int_var[7] >= 0
 load_constr27: load_int_var[7] <= 60
Bounds
Generals
 load_int_var[1] load_int_var[2] load_int_var[3] load_int_var[4]
 load_int_var[5] load_int_var[6] load_int_var[7]
End
