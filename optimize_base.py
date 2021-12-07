import gurobipy as gp
from gurobipy import GRB
import numpy as np
from itertools import product

try:
    print()
    # set model
    # m = gp.Model('load_balancing')


    # set variable
    #maxweight = m.addVar(name = 'maxweight', vtype=GRB.CONTINUOUS)
    #LD = m.addVars(product(B, WAGON), vtype=GRB.BINARY, name='load_constr')


    # set object
    # obj = maxweight
    # m.setObjective(obj, GRB.MINIMIZE)

    # add constraint
    #m.addConstr(maxweight <= 100, name = 'maxweight_constr')


    # optimize
    # m.optimize()
    # m.write("OPT_7.lp")  # 진행 기록가능
    # print('목적식 결과 : %g' % m.objval)



except gp.GurobiError as e:
    print('error : ' + e)
