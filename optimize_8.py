import gurobipy as gp
from gurobipy import GRB
import numpy as np
from itertools import product

try:
    # set model
    m = gp.Model('barge_loading')

    capa = 1500
    condition = {'1': [12, 10, 1000, 80]
        , '2': [31, 8, 600, 70]
        , '3': [20, 6, 600, 85]
        , '4': [25, 9, 800, 80]
        , '5': [50, 15, 1200, 73]
        , '6': [40, 10, 800, 70]
        , '7': [60, 12, 1100, 80]
                 }  # [available_quantity, lot_size, price, transport_cost]
    client = condition.keys()

    price_per_lot = dict()
    quantity = dict()
    for c in client:
        price_per_lot[c] = condition[c][2] / condition[c][1]
        quantity[c] = condition[c][0] * condition[c][1]
    print(price_per_lot)

    # set variable
    load = m.addVars(client, name='load_var')

    # set object
    obj = sum((price_per_lot[c] - condition[c][3]) * load[c] for c in client)
    m.setObjective(obj, GRB.MAXIMIZE)

    # add constraint
    load_sum = sum(load[c] for c in client)
    m.addConstr(load_sum == capa, name='load_sum_constr')
    for c in client:
        m.addConstr(load[c] >= 0, name='load_constr' + c)

    # optimize
    m.optimize()
    m.write("OPT_8_1.lp")  # 진행 기록가능
    print('목적식 결과 : %g' % m.objval)
    print(m.getAttr('x', load))

    # 2
    for c in client:
        m.addConstr(load[c] <= quantity[c], name='load_constr2' + c)

    # optimize
    m.optimize()
    m.write("OPT_8_2.lp")  # 진행 기록가능
    print('목적식 결과 : %g' % m.objval)
    print(m.getAttr('x', load))


    m.remove(m.getConstrByName('load_sum_constr'))
    for c in client:
        m.remove(m.getConstrByName('load_constr'+c))
        m.remove(m.getConstrByName('load_constr2'+c))

    # set variable
    load_int = m.addVars(client, name='load_int_var', vtype=GRB.INTEGER)

    # set object
    obj = sum((condition[c][2] - condition[c][3] * condition[c][1]) * load_int[c] for c in client)
    m.setObjective(obj, GRB.MAXIMIZE)

    # add constraint
    load_int_sum = sum(load_int[c] * condition[c][1] for c in client)
    m.addConstr(load_int_sum == capa, name='load_int_sum_constr')
    for c in client:
        m.addConstr(load_int[c] >= 0, name='load_int_constr' + c)
        m.addConstr(load_int[c] <= condition[c][0], name='load_constr2' + c)


    # optimize
    m.optimize()
    m.write("OPT_8_3.lp")  # 진행 기록가능
    print('목적식 결과 : %g' % m.objval)
    print(m.getAttr('x', load_int))

except gp.GurobiError as e:
    print('error : ' + e)
