import gurobipy as gp
from gurobipy import GRB
import numpy as np

try:
    # create a new model
    m = gp.Model("scheduling")

    n = 3

    WORK = {
        1: [3, 5, 5],
        2: [6, 4, 2],
        3: [3, 2, 4],
        4: [5, 4, 6],
        5: [5, 4, 3],
        6: [7, 5, 6]
    }

    k = len(WORK)

    RNK = list(WORK.keys())
    MACH = list(range(1, 4))

    # create variables
    R = {}
    START = {}
    WAIT = {}
    DUR = {}

    for i in range(1, k + 1):
        dic = {}
        for j in range(1, n + 1):
            dic[j] = 0
        R[i] = m.addVars(RNK, name='RANK_' + str(i), vtype = GRB.BINARY)
        START[i] = m.addVars(MACH, name='START_' + str(i))
        WAIT[i] = m.addVars(MACH, name='WAIT_' + str(i))
        DUR[i] = dic
        m.update()

    # print(R)
    # print(START)
    # print(WAIT)

    ###############################################################################################
    # Numpy 사용

    # rank matrix setting
    ls = []
    for i in range(1, k + 1):
        for j in range(1, k + 1):
            ls.append(m.addVar(name='RANK1_' + str(i) + '_' + str(j), vtype=GRB.BINARY))

    # duration setting
    ls2 = []
    for i in range(3):
        for j in range(1,7):
            ls2.append(WORK[j][i])

    # print(ls)
    # print(ls2)

    RK = np.array(ls).reshape(6,6)
    WK = np.array(ls2).reshape(6,3)

    DURA = np.matmul(RK, WK)

    ######################################################################################################


    for w in range(n):
        for i in range(1,k+1):
            sum = 0
            for j in range(1,k+1):
                sum += WORK[j][w] * R[i][j]
            DUR[i][w + 1] = sum
            DURA[i-1][w] = sum # numpy 사용한 Duration
    # print(DUR)
    # print(DURA)



    # set objective function

        #obj = START[6][3] + DUR[6]

    # numpy 사용
    obj = START[6][3] + DURA[5][2]
    m.setObjective(obj, GRB.MINIMIZE)


    # Add constraint
    for i in range(1,k+1):
        s = 0
        ss = 0
        for j in range(1, k + 1):
            s += R[i][j]
            ss += R[j][i]
        m.addConstr(1 == s, 'R_row_' + str(i))
        m.addConstr(1 == ss, 'R_column_' + str(i))


    for i in range(1, k + 1):
        for j in range(1, n + 1):
            if i != k:
                # m.addConstr(START[i][j] + DUR[i][j] + WAIT[i][j] == START[i + 1][j], 'constr1_' + str(i) + str(j))

                # numpy 사용
                m.addConstr(START[i][j] + DURA[i-1][j-1] + WAIT[i][j] == START[i + 1][j], 'constr1_' + str(i) + str(j))

            if j != n:
                # m.addConstr(START[i][j] + DUR[i][j] <= START[i][j + 1],'constr2_' + str(i) + str(j))

                # numpy 사용
                m.addConstr(START[i][j] + DURA[i-1][j-1] <= START[i][j + 1], 'constr2_' + str(i) + str(j))


    # Optimize Model
    m.optimize()
    print('목적식 결과 : %g' % m.objval)
    rank = []
    for i in range(1, 7):
        for j in m.getAttr('x', R[i]):
            if m.getAttr('x', R[i])[j] == 1:
                rank.append(j)
    print('순번 : ' , rank)
    m.write("OPT_5.lp")  # 진행 기록가능

except gp.GurobiError as e:
    print(e)