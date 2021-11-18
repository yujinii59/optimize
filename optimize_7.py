import gurobipy as gp
from gurobipy import GRB
import numpy as np

try:
    # set model
    m = gp.Model('load_balancing')

    # box_weight
    BW = {1: 34
        , 2: 6
        , 3: 8
        , 4: 17
        , 5: 16
        , 6: 5
        , 7: 13
        , 8: 21
        , 9: 25
        , 10: 31
        , 11: 14
        , 12: 13
        , 13: 33
        , 14: 9
        , 15: 25
        , 16: 25
          }
    B = list(BW.keys())     # box
    W = list(BW.values())   # weight
    WAGON = [1, 2, 3]

    # set variable

    maxweight = m.addVar(name = 'maxweight', vtype=GRB.CONTINUOUS)
    minweight = m.addVar(name='minweight', vtype=GRB.CONTINUOUS)
    ls = list()
    for i in WAGON:
        for j in B:
            ls.append(m.addVar(name='LOAD_' + str(i) + '_' + str(j), vtype=GRB.BINARY))

            #ls.append(1)

    # LOAD = m.addVars()
    WEIGHT = np.array(W)
    LOAD = np.array(ls).reshape(16,3)
    BL = np.matmul(W, LOAD)

    obj = maxweight - minweight
    m.setObjective(obj, GRB.MINIMIZE)

    # add constraint
    for i in range(len(B)):
        m.addConstr(sum(l for l in LOAD[i]) == 1 , name='load_const_' + str(i))

    for i,bl in enumerate(BL):
        m.addConstr(bl <= 100 , name='max_constr' + str(i))

    for i in range(len(WAGON)):
        m.addConstr(maxweight >= BL[i], name = 'maxweight_constr' + str(i))
        m.addConstr(minweight <= BL[i], name = 'minweight_constr' + str(i))

    # optimize
    m.optimize()
    m.write("OPT_7.lp")  # 진행 기록가능
    print('목적식 결과 : %g' % m.objval)
    LOAD_MAT    = np.array(m.getAttr('x', ls)).reshape(16,3)
    WAGON_T     = np.array(WAGON).reshape(3,1)
    LOAD_LIST   = np.matmul(LOAD_MAT, WAGON_T)
    LOAD_WEIGHT = np.matmul(W, LOAD_MAT)
    LOAD_LIST   = list(map(int, LOAD_LIST))

    Wagon = dict()
    for i, load in enumerate(LOAD_LIST):
        if load not in Wagon.keys():
            Wagon[load] = list()
        Wagon[load].append(i + 1)
    for i in WAGON:
        print('Wagon{} ---- Box : '.format(i), Wagon[i], ', Weight : ', LOAD_WEIGHT[i - 1])


except gp.GurobiError as e:
    print('error : ' + e)
