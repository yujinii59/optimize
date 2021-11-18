import gurobipy as gp
from gurobipy import GRB

try:
    # create a new model
    m = gp.Model("Construction")

    DUR = [2,16,9,8,10,6,2,2,9,5,3,2,1,7,4,3,9,1]
    PRED = {'1': ['start']
          , '2': ['1']
          , '3': ['2']
          , '4': ['2']
          , '5': ['3']
          , '6': ['4','5']
          , '7': ['4']
          , '8': ['6']
          , '9': ['4','6']
          , '10': ['4']
          , '11': ['6']
          , '12': ['9']
          , '13': ['7']
          , '14': ['2']
          , '15': ['4','14']
          , '16': ['8','11','14']
          , '17': ['12']
          , '18': ['17']
            }
    MAX_REDUCT = [0,3,1,2,2,1,1,0,2,1,1,0,0,2,2,1,3,0]
    ADD_COST = [0,30,26,12,17,15,8,0,42,21,18,0,0,22,12,6,16,0]

    START_TIME = list(PRED.keys())


    # create variables
    START = m.addVars(START_TIME, name = 'start')

    # set objective function
    obj = START[START_TIME[-1]] + DUR[-1]

    m.setObjective(obj, GRB.MINIMIZE)

    # Add constraint
    for s in START_TIME:
        for i in PRED[s]:
            if i == 'start':
                m.addConstr(0 <= START[s], 'start_constr'+s+'_'+i)
            else:
                m.addConstr(START[i] + DUR[int(i)-1] <= START[s], 'start_constr'+s+'_'+i)

    # Optimize Model
    m.optimize()
    print('걸린 시간 : %g' % m.objval)
    first = m.objval
    m.write("first_problem.lp")     # 진행 기록가능

    # for s in START_TIME:
    #     for i in PRED[s]:
    #         c = m.getConstrByName('start_constr'+s+'_'+i)
    #         m.remove(c)



    # m2 = gp.Model("Profit")
    # START2 = m2.addVars(START_TIME, name='start')
    REDUCE = m.addVars(START_TIME, name='reduce')
    m.update()
    obj = sum(REDUCE[s] for s in START_TIME)
    obj2 = (first - (START[START_TIME[-1]] + DUR[-1])) * 30
    for s in START_TIME:
        i = int(s) - 1
        obj2 -= ADD_COST[i] * REDUCE[s]
    # obj = obj * -1
    m.setObjective(obj2, GRB.MAXIMIZE)
    # m.ModelSense = GRB.MAXIMIZE
    # m.setObjectiveN(obj2, 1, 99, name='Max.Profit')
    # m.setObjectiveN(obj, 2, 98, name='Min.Time')
    #m2.setObjective()

    for s in START_TIME:
        for i in PRED[s]:
            if i == 'start':
                m.addConstr(0 <= START[s], 'start_constr2'+s+'_'+i)
            else:
                m.addConstr(START[i] + DUR[int(i)-1] - REDUCE[i] <= START[s], 'start_constr2'+s+'_'+i)
        m.addConstr(REDUCE[s] <= MAX_REDUCT[int(s) - 1], 'reduce' + s)
        m.addConstr(0 <= REDUCE[s], 'reduce2' + s)
    m.addConstr(obj + START[START_TIME[-1]] + DUR[-1] == first, 'last_constr')
    m.optimize()
    print('걸린 시간 : %g' % int(START[START_TIME[-1]].x + DUR[-1]))
    print('최대 이익 : %g' % obj2.getValue())



except gp.GurobiError as e:
    print(e)

