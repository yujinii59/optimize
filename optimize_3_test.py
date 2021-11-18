import gurobipy as gp
from gurobipy import GRB

try:
    # create a new model
    m = gp.Model('Optimize_3')
    REQ = {
          ("axle", "wheel"): 2
        , ("axle", "steel bar"): 1
        , ("assembled chassis", "bumper"): 2
        , ("assembled chassis", "axle"): 2
        , ("assembled chassis", "chassis"): 1
        , ("assembled cabin", "cabin"): 1
        , ("assembled cabin", "door window"): 2
        , ("assembled cabin", "windscreen"): 1
        , ("blue lorry", "assembled chassis"): 1
        , ("blue lorry", "container"): 1
        , ("blue lorry", "assembled cabin"): 1
        , ("blue lorry", "blue motor"): 1
        , ("blue lorry", "headlight"): 2
        , ("red lorry", "assembled chassis"): 1
        , ("red lorry", "tank"): 1
        , ("red lorry", "assembled cabin"): 1
        , ("red lorry", "red motor"): 1
        , ("red lorry", "headlight"): 2
    }

    CBUY = {     "wheel":0.30
            ,"steel bar":1
            ,"bumper":0.2
            ,"axle":12.75
            ,"chassis":0.8
            ,"cabin":2.75
            ,"door window":0.1
            ,"windscreen":0.29
            ,"assembled chassis":30
            ,"container":2.60
            ,"tank":3
            ,"assembled cabin":3
            ,"blue motor":1.65
            ,"red motor":1.65
            ,"headlight":0.15
        }

    CPROD = {
             "axle": 6.80
            ,"assembled chassis":3.55
            ,"assembled cabin":3.20
            ,"blue lorry":2.20
            ,"red lorry":2.60
            }

    CAPA = {
             "axle": 600
            ,"assembled chassis":4000
            ,"assembled cabin":3000
            ,"blue lorry":4000
            ,"red lorry":5000
            }

    DEM = {
          "blue lorry":3000
        , "red lorry":3000
        }

    ITEMDIC = CBUY.copy()
    ITEMDIC.update(CPROD)
    ITEM = list(ITEMDIC.keys())

    BUY = list(CBUY.keys())
    PROD = list(CPROD.keys())
    FINAL = list(DEM.keys())


    obj = 0

    # create variables
    BUYCNT = m.addVars(BUY, name="BUY")
    PRODCNT = m.addVars(PROD, name="PROD")
    m.update()

    #print(BUYCNT)

    # set objective function
    for i in BUY:
        obj += CBUY[i] * BUYCNT[i]
    for j in PROD:
        obj += CPROD[j] * PRODCNT[j]

    m.setObjective(obj, GRB.MINIMIZE)


    # Add constraint
    for f in FINAL:
        m.addConstr(PRODCNT[f] >= DEM[f], "finalconstr" + f)

    print(BUY)
    print(PROD)

    for i in BUY:
        if i in PROD:
            m.addConstr(BUYCNT[i] + PRODCNT[i] >= sum(REQ[j,i] * PRODCNT[j] for j in PROD if (j, i) in REQ), "asmblconstr"+ i)
        else:
            m.addConstr(BUYCNT[i] >= sum(REQ[j,i] * PRODCNT[j] for j in PROD if (j, i) in REQ),'buyconstr'+j+i)

    for i in PROD:
        m.addConstr(PRODCNT[i] <= CAPA[i], 'capaconstr'+i)

    # Optimize Model
    m.optimize()

    print('obj : %g' % m.objval)

except gp.GurobiError as e:
    print(e)