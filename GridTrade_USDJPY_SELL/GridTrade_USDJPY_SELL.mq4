//+------------------------------------------------------------------+
//|                                        GridTrade_USDJPY_SELL.mq4 |
//|                                                             囚牛 |
//|                                         https://www.囚牛投资.com |
//+------------------------------------------------------------------+
#property copyright "囚牛投资"
#property link      "https://www.囚牛投资.com"
#property version   "1.00"
#property strict

#define LatestMax 10
#define EA_MAGIC  20221119
//--- input parameters

input int    area_delay = 10;
input int    step_delay = 10;
input int    reverse_interval_time = 300;

input bool   sell_open_20 = true;
input bool   sell_open_19 = true;
input bool   sell_open_18 = true;
input bool   sell_open_17 = true;
input bool   sell_open_16 = true;
input bool   sell_open_15 = true;
input bool   sell_open_14 = true;
input bool   sell_open_13 = true;
input bool   sell_open_12 = true;
input bool   sell_open_11 = true;
input bool   sell_open_10 = true;
input bool   sell_open_9  = true;
input bool   sell_open_8  = true;
input bool   sell_open_7  = true;
input bool   sell_open_6  = true;
input bool   sell_open_5  = true;
input bool   sell_open_4  = true;
input bool   sell_open_3  = true;
input bool   sell_open_2  = true;
input bool   sell_open_1  = true;
input bool   sell_open_0  = true;

input double sell_price_20 = 150;
input double sell_price_19 = 149;
input double sell_price_18 = 148;
input double sell_price_17 = 147;
input double sell_price_16 = 146;
input double sell_price_15 = 145;
input double sell_price_14 = 144;
input double sell_price_13 = 143;
input double sell_price_12 = 142;
input double sell_price_11 = 141;
input double sell_price_10 = 140;
input double sell_price_9  = 139;
input double sell_price_8  = 138;
input double sell_price_7  = 137;
input double sell_price_6  = 136;
input double sell_price_5  = 135;
input double sell_price_4  = 134;
input double sell_price_3  = 133;
input double sell_price_2  = 132;
input double sell_price_1  = 131;
input double sell_price_0  = 130;

input int    sell_open_max_20 = 200;
input int    sell_open_max_19 = 190;
input int    sell_open_max_18 = 180;
input int    sell_open_max_17 = 170;
input int    sell_open_max_16 = 160;
input int    sell_open_max_15 = 150;
input int    sell_open_max_14 = 140;
input int    sell_open_max_13 = 130;
input int    sell_open_max_12 = 120;
input int    sell_open_max_11 = 110;
input int    sell_open_max_10 = 100;
input int    sell_open_max_9  = 90;
input int    sell_open_max_8  = 80;
input int    sell_open_max_7  = 70;
input int    sell_open_max_6  = 60;
input int    sell_open_max_5  = 50;
input int    sell_open_max_4  = 40;
input int    sell_open_max_3  = 30;
input int    sell_open_max_2  = 20;
input int    sell_open_max_1  = 10;
input int    sell_open_max_0  = 10;

input double sell_price_step_20 = 0.06;
input double sell_price_step_19 = 0.06;
input double sell_price_step_18 = 0.06;
input double sell_price_step_17 = 0.06;
input double sell_price_step_16 = 0.06;
input double sell_price_step_15 = 0.06;
input double sell_price_step_14 = 0.06;
input double sell_price_step_13 = 0.06;
input double sell_price_step_12 = 0.14;
input double sell_price_step_11 = 0.08;
input double sell_price_step_10 = 0.07;
input double sell_price_step_9  = 0.06;
input double sell_price_step_8  = 0.06;
input double sell_price_step_7  = 0.06;
input double sell_price_step_6  = 0.06;
input double sell_price_step_5  = 0.06;
input double sell_price_step_4  = 0.06;
input double sell_price_step_3  = 0.06;
input double sell_price_step_2  = 0.06;
input double sell_price_step_1  = 0.06;
input double sell_price_step_0  = 0.06;

input double sell_lots_20 = 0.05;
input double sell_lots_19 = 0.05;
input double sell_lots_18 = 0.05;
input double sell_lots_17 = 0.04;
input double sell_lots_16 = 0.04;
input double sell_lots_15 = 0.03;
input double sell_lots_14 = 0.03;
input double sell_lots_13 = 0.02;
input double sell_lots_12 = 0.02;
input double sell_lots_11 = 0.02;
input double sell_lots_10 = 0.02;
input double sell_lots_9  = 0.01;
input double sell_lots_8  = 0.01;
input double sell_lots_7  = 0.01;
input double sell_lots_6  = 0.01;
input double sell_lots_5  = 0.01;
input double sell_lots_4  = 0.01;
input double sell_lots_3  = 0.01;
input double sell_lots_2  = 0.01;
input double sell_lots_1  = 0.01;
input double sell_lots_0  = 0.01;

input double sell_tp_20 = 3.0;
input double sell_tp_19 = 3.0;
input double sell_tp_18 = 3.0;
input double sell_tp_17 = 3.0;
input double sell_tp_16 = 3.0;
input double sell_tp_15 = 3.0;
input double sell_tp_14 = 3.0;
input double sell_tp_13 = 3.0;
input double sell_tp_12 = 3.0;
input double sell_tp_11 = 3.0;
input double sell_tp_10 = 3.0;
input double sell_tp_9  = 3.0;
input double sell_tp_8  = 3.0;
input double sell_tp_7  = 3.0;
input double sell_tp_6  = 3.0;
input double sell_tp_5  = 3.0;
input double sell_tp_4  = 3.0;
input double sell_tp_3  = 3.0;
input double sell_tp_2  = 3.0;
input double sell_tp_1  = 3.0;
input double sell_tp_0  = 3.0;

input int    sell_dly_20 = 10;
input int    sell_dly_19 = 20;
input int    sell_dly_18 = 30;
input int    sell_dly_17 = 40;
input int    sell_dly_16 = 50;
input int    sell_dly_15 = 60;
input int    sell_dly_14 = 70;
input int    sell_dly_13 = 80;
input int    sell_dly_12 = 90;
input int    sell_dly_11 = 100;
input int    sell_dly_10 = 110;
input int    sell_dly_9  = 120;
input int    sell_dly_8  = 130;
input int    sell_dly_7  = 140;
input int    sell_dly_6  = 150;
input int    sell_dly_5  = 160;
input int    sell_dly_4  = 170;
input int    sell_dly_3  = 180;
input int    sell_dly_2  = 190;
input int    sell_dly_1  = 200;
input int    sell_dly_0  = 200;

input int    sell_step_dly_20 = 10;
input int    sell_step_dly_19 = 20;
input int    sell_step_dly_18 = 30;
input int    sell_step_dly_17 = 40;
input int    sell_step_dly_16 = 50;
input int    sell_step_dly_15 = 60;
input int    sell_step_dly_14 = 70;
input int    sell_step_dly_13 = 80;
input int    sell_step_dly_12 = 90;
input int    sell_step_dly_11 = 100;
input int    sell_step_dly_10 = 110;
input int    sell_step_dly_9  = 120;
input int    sell_step_dly_8  = 130;
input int    sell_step_dly_7  = 140;
input int    sell_step_dly_6  = 150;
input int    sell_step_dly_5  = 160;
input int    sell_step_dly_4  = 170;
input int    sell_step_dly_3  = 180;
input int    sell_step_dly_2  = 190;
input int    sell_step_dly_1  = 200;
input int    sell_step_dly_0  = 200;

input int    sell_open_dly_20 = 24; //单位小时
input int    sell_open_dly_19 = 24;
input int    sell_open_dly_18 = 24;
input int    sell_open_dly_17 = 24;
input int    sell_open_dly_16 = 24;
input int    sell_open_dly_15 = 24;
input int    sell_open_dly_14 = 24;
input int    sell_open_dly_13 = 24;
input int    sell_open_dly_12 = 24;
input int    sell_open_dly_11 = 24;
input int    sell_open_dly_10 = 24;
input int    sell_open_dly_9  = 24;
input int    sell_open_dly_8  = 24;
input int    sell_open_dly_7  = 24;
input int    sell_open_dly_6  = 24;
input int    sell_open_dly_5  = 24;
input int    sell_open_dly_4  = 24;
input int    sell_open_dly_3  = 24;
input int    sell_open_dly_2  = 24;
input int    sell_open_dly_1  = 24;
input int    sell_open_dly_0  = 24;

#define EREA_LEN                                21
#define EREA_STEP_MAX                           20

#define EA_COMMENT                              "www.囚牛投资.com"
bool   sell_open[EREA_LEN]                      = {false};
double sell_price[EREA_LEN]                     = {0};
int    sell_open_max[EREA_LEN]                  = {0};
double sell_price_step[EREA_LEN]                = {0};
double sell_lots[EREA_LEN]                      = {0};
double sell_tp[EREA_LEN]                        = {0};
int    sell_dly[EREA_LEN]                       = {0};
int    sell_step_dly[EREA_LEN]                  = {0};
int    sell_orders[EREA_LEN][EREA_STEP_MAX]     = {{0}};
datetime orderHoldTime[EREA_LEN][EREA_STEP_MAX] = {{0}};
//int    clr_ticks[EREA_LEN][EREA_STEP_MAX]     = {{0}};

int g_lastPriceErea = 0;
int g_area_idx = 0;
int g_area_step = 0;
int g_ordNew_areaIdx = 0;
int g_ordNew_areaStep = 0;
int g_ordNew_onStep = 0;
datetime g_latestOpenTime;

int g_latestIdx = 0;
int g_latestOpenArea[LatestMax] = {0};
int g_latestAreaStep[LatestMax] = {0};
int g_latestOnStep[LatestMax]   = {0};

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
{
//--- create timer
    //EventSetTimer(60);
    InitEaOrderPara();
    InitEaHistOrderPara();
    return(INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
    //--- destroy timer
    EventKillTimer();
}

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
int TickProc = 0;
void OnTick()
{
   TickProc++;
   if (TickProc > 1) {
      TickProc = 0;
      return;
   }
   OnTickProc();
   TickProc = 0;
}

void OnTickProc()
{
    if (TradeCheck() != 0) {
        return;
    }
    OrderStatistics();
    OrderStrategy();
}

int GetAreaStepPos(int areaIdx, int areaStep)
{
    return ((areaIdx - 1)*EREA_STEP_MAX + areaStep);
}

bool IsPriceEreaOpenEnable(double price)
{
   int areaIdx;
   
   areaIdx = WhichPriceArea(price);
   if (areaIdx == EREA_LEN) {
      return false;
   }
   
   return sell_open[areaIdx];
}

int WhichPriceArea(double price)
{
    for (int i = 0; i < EREA_LEN-1; ++i) {
        if ((sell_price[i]<=price) && (price < sell_price[i+1])) {
            return i;
        }
    }
    return -1;
}

int WhichAreaStep(int areaIdx, double price)
{ 
   for (int s = 0; s < EREA_STEP_MAX; ++s) {
      if ((          sell_price[areaIdx] +     s*sell_price_step[areaIdx] <= price) 
         && (price < sell_price[areaIdx] + (s+1)*sell_price_step[areaIdx])) {
         return s;
      }
   }
   return -1;
}


int TradeCheck()
{
    //货币对校验
    if ((Symbol() == "USDJPY") || (Symbol() == "USDJPYm") || (Symbol() == "USDJPYc")) {
        // Do nothing;
    } else {
        printf("Symbol(%s) is not USDJPY", Symbol());
        return -1;
    }

    int areaIdx, areaStep;

    areaIdx = WhichPriceArea(Bid);
    if (areaIdx < 0) {
        return -1;
    }
   
    areaStep = WhichAreaStep(areaIdx, Bid);
    if (areaStep < 0) {        
        return -1;
    }
    
    g_area_idx = areaIdx;
    g_area_step = areaStep;
    return 0;
}


#define CLR_TICK 50
int clr_tick = 0;
int g_eaOrdNum = 0;
void OrderStatistics()
{
    int pos, ordNum, ordArea, ordStep;
    double oop;
    int eaOrdNum = 0;
    
    if (clr_tick % CLR_TICK == 0) {
        for (int areaIdx=0; areaIdx<EREA_LEN; ++areaIdx) {
            for (int areaStep=0; areaStep<EREA_STEP_MAX; ++areaStep) {
                if (sell_orders[areaIdx][areaStep] > 0) {
                    sell_orders[areaIdx][areaStep] = 0;
                    //printf("OrderNum[%d][%d] = %d", areaIdx, areaStep, sell_orders[areaIdx][areaStep]);
                }
            }
        }
    }
    clr_tick++;

    ordNum = OrdersTotal();
    for (pos=ordNum-1; pos>=0; --pos) {
        if(OrderSelect(pos,SELECT_BY_POS,MODE_TRADES) == false) {
            continue;
        }
        if (OrderMagicNumber() != EA_MAGIC) {
            continue;
        }
        if(OrderSymbol() != Symbol()) {
            continue;
        }
        eaOrdNum++;
        
        oop = OrderOpenPrice();  
        ordArea = WhichPriceArea(oop);
        ordStep = WhichAreaStep(ordArea, oop);
        
        sell_orders[ordArea][ordStep]++;
        orderHoldTime[ordArea][ordStep] = TimeCurrent();
    }
    g_eaOrdNum = eaOrdNum;
}

void OrderStrategy()
{
    int areaIdx, areaStep;
    
    areaIdx = g_area_idx;
    areaStep = g_area_step;
    
    // 如果区间段已有单，不再下单，返回。
    //printf("OrderStrategy_1");
    if (OrderStrategy_1(areaIdx, areaStep) == false) {
        return;
    }
    // 区间段无单

    // 价格在区间的底三分之一处才可开单，不再则返回。
    //printf("OrderStrategy_2");
    if (OrderStrategy_2(areaIdx, areaStep) == false) {
        return;
    }
    // 价格在区间段的三分之二以上。
    
    // 逆势新开仓时间与上一单开仓时间差，要大于阈值，顺势没有时间间隔
    //printf("OrderStrategy_3");
    if (OrderStrategy_3(areaIdx, areaStep) == false) {
        return;
    }
    
    // 本区间关闭订单后，本区间的冻结交易时间


    //printf("OrderStrategy_4");
    if (OrderStrategy_4(areaIdx, areaStep) == false) {
        return;
    }


    //printf("OrderStrategy_5");
    if (OrderStrategy_5(areaIdx, areaStep) == false) {
        return;
    }
    //printf("OrderStrategy_6");
    //if (OrderStrategy_6(areaIdx, areaStep) == false) {
    //    return;
    //}
    // 区间开单的开关如果打开才下单
    //printf("OrderStrategy_OpenEnable");
    if (OrderStrategy_OpenEnable(areaIdx, areaStep) == false) {
        return;
    }

    OrderNew(areaIdx, areaStep);
}

// 价格区间段已有订单，则不开新单，每50个tick清零重新计算一次。
bool OrderStrategy_1(int areaIdx, int areaStep)
{
    //printf("sell_orders[%d][%d]", areaIdx, areaStep);
    if (sell_orders[areaIdx][areaStep] == 0) {
        return true;
    }
    return false;
}
// 价格在区间的顶三分之二处才可开单
bool OrderStrategy_2(int areaIdx, int areaStep)
{
    if (Bid > (sell_price[areaIdx] + areaStep*sell_price_step[areaStep] + 2*sell_price_step[areaStep]/3)) {
        //printf("new order: P_%f, A_%d, S_%d", Bid, g_ordNew_areaIdx, g_ordNew_areaStep);
        return true;
    }
    return false;
}

// 逆势新开仓时间与上一单开仓时间差，要大于阈值（底线），顺势没有时间间隔
bool OrderStrategy_3(int areaIdx, int areaStep)
{
    int onStep = GetAreaStepPos(areaIdx, areaStep);
    if (onStep > g_latestOnStep[g_latestIdx]) {
        if (TimeCurrent() - g_latestOpenTime > reverse_interval_time) {
            return true;
        }
        return false;
    }

    return true;
}

// 本区间订单关闭后,本区间新开仓的交易冻结时间
bool OrderStrategy_4(int areaIdx, int areaStep)
{
    if ( (TimeCurrent() - orderHoldTime[areaIdx][areaStep]) > (sell_dly[areaIdx] + sell_step_dly[areaStep]) ) {
        return true;
    }
    return false;
}

int g_contiOrders = 0;
// 逆势连续开仓进行延迟
bool OrderStrategy_5(int areaIdx, int areaStep)
{
    int last1, last2, last3, last4;
    int onStep = GetAreaStepPos(areaIdx, areaStep);
    int dly = 0;
    datetime diff = 0;
    
    last1 =  g_latestIdx;
    last2 = (g_latestIdx+LatestMax-1) % LatestMax;
    last3 = (g_latestIdx+LatestMax-2) % LatestMax;
    last4 = (g_latestIdx+LatestMax-3) % LatestMax;
    
    diff = TimeCurrent() - g_latestOpenTime;     

    // 连续一个区间递增
    if ((onStep > g_latestOnStep[last1]) && (g_latestOnStep[last1]!=0)) 
    {
        // 连续一个区间递增，且满足延时
        if (diff > sell_dly[areaIdx])
        {
            // 连续两个区间递增
            if (g_latestOnStep[last1] > g_latestOnStep[last2])
            {
                dly = sell_dly[g_latestOpenArea[last1]]
                    + sell_dly[areaIdx];  
                // 连续两个区间递增， 且满足延时
                if (diff > dly) 
                {
                    // 连续三个区间递增
                    if (g_latestOnStep[last2] > g_latestOnStep[last3])
                    {
                        dly = sell_dly[g_latestOpenArea[last1]] 
                            + sell_dly[g_latestOpenArea[last2]] 
                            + sell_dly[areaIdx];
                        // 连续三个区间递增， 且满足延时
                        if (diff > dly)
                        {
                            // 连续四个区间递增
                            if (g_latestOnStep[last3] > g_latestOnStep[last4])
                            {
                                dly = sell_dly[g_latestOpenArea[last1]] 
                                    + sell_dly[g_latestOpenArea[last2]] 
                                    + sell_dly[g_latestOpenArea[last3]] 
                                    + sell_dly[areaIdx];
                                // 连续四个区间递增， 且满足延时
                                if (diff > dly)
                                {
                                    // 连续四个区间递增， 且满足延时
                                    g_contiOrders = 4;
                                    return true;
                                }
                                else 
                                {
                                    // 连续四个区间递增， 不满足延时
                                    return false;
                                }
                            }
                            else
                            {
                                // 连续三个区间递增， 连续四个区间不递增
                                g_contiOrders = 3;
                                return true;
                            }
                        }
                        else
                        {
                            // 连续三个区间递增， 不满足延时
                            return false;
                        }
                    } 
                    else
                    {
                        // 连续两个区间递增， 连续三个区间不递增
                        g_contiOrders = 2;
                        return true;
                    }
                }
                else
                {
                    // 连续两个区间递增， 不满足延时
                    return false;
                }
            }
            else
            {
                // 连续一个区间递增， 连续两个区间不递增
                g_contiOrders = 1;
                return true;
            }
        }
        else
        {
            // 连续一个区间递增， 不满足延时
            //g_contiOrders = 1;
            return false;
        }
    }
    else
    {
        // 连续一个区间 不递增
        g_contiOrders = 0;
        return true;
    }
}

// 连续开单，修改下单量
int OrderStrategy_6(int areaIdx, int areaStep)
{
    switch (g_contiOrders) {
      case 1:
      case 2:
      case 3:
      case 4:
         printf("OrderStrategy_6: contiOrders=%d", g_contiOrders);
         return g_contiOrders;
         break;
      default:
          return 0;
    }
}


// 总开单数
int OrderStrategy_7(int areaIdx, int areaStep)
{
    int orderMul = g_eaOrdNum / 10 + 1;
    return orderMul;
}

// 订单数量是否大于一定的阈值了。
bool OrderStrategy_8(int areaIdx, int areaStep)
{
    if (g_eaOrdNum > 30) {
        return true;
    }
    return false;
}

bool OrderStrategy_9(int areaIdx, int areaStep)
{
    if (true) {
        return true;
    }
    return false;
}

bool OrderStrategy_OpenEnable(int areaIdx, int areaStep)
{
    return sell_open[areaIdx];
}

double GetOrderDeltaLots(int areaIdx, int areaStep, double lots)
{
    double dltLots = 0;
    int contiNum = OrderStrategy_6(areaIdx, areaStep);
    switch (contiNum) {
      case 1:
        //lots += 0.01;   break;
      case 2:
        dltLots = 0.01;   break;
      case 3:
        dltLots = 0.02;   break;
      case 4:
        dltLots = 0.03;   break;
      default:
          ;
    }
    printf("GetOrderDeltaLots: %d", dltLots);
    return dltLots;
}

double GetOrderDeltaTp(int areaIdx, int areaStep, double tp)
{
    double dltTp=0;
    int contiNum = OrderStrategy_6(areaIdx, areaStep);
    switch (contiNum) {
      case 1:
        //lots += 0.01;   break;
      case 2:
        dltTp = 0.01;   break;
      case 3:
        dltTp = 0.02;   break;
      case 4:
        dltTp = 0.03;   break;
      default:
          ;
    }
    printf("GetOrderDeltaTp: %d", dltTp);
    return dltTp;
}

double GetOrderMulLots(int areaIdx, int areaStep, double lots)
{
    double dltLots = 0;
    int mul = OrderStrategy_7(areaIdx, areaStep);
    if (mul > 1) {
        printf("GetOrderMulLots: %d", mul);
        dltLots = lots * mul;
    }
    return dltLots;
}

double GetOrderMulTp(int areaIdx, int areaStep, double tp)
{
    double dltTp = 0;
    int mul = OrderStrategy_7(areaIdx, areaStep);
    if (mul > 1) {
        printf("GetOrderMulTp: %d", mul);
        dltTp = tp + tp/2;
    }

    return dltTp;
}

void OrderNew(int areaIdx, int areaStep)
{
    int ticket;
    double st;
    double openPrice = Bid;
    double lots, dltLots, mulLots;
    double tp,   dltTp,   mulTp;
    
    g_ordNew_areaIdx = areaIdx;
    g_ordNew_areaStep = areaStep;

    lots = dltLots = mulLots = 0;
    tp   = dltTp   = mulTp   = 0;

    lots = sell_lots      [g_ordNew_areaIdx];
    tp   = sell_price_step[g_ordNew_areaIdx];

    dltLots = GetOrderDeltaLots(areaIdx, areaStep, lots);
    dltTp   = GetOrderDeltaTp  (areaIdx, areaStep, tp);

    mulLots = GetOrderMulLots(areaIdx, areaStep, lots);
    mulTp   = GetOrderMulTp  (areaIdx, areaStep, tp);

    lots = lots + dltLots + mulLots;
    tp   = tp   + dltTp   + mulTp;   

    st = 0;
    tp = openPrice - tp;

    printf("OrderNew:areaIdx=%d, dltLots=%f, dltTp=%f, mulLots=%f, mulTp=%f, lots=%f, tp=%f", areaIdx, dltLots, dltTp, mulLots, mulTp, lots, tp);
    ticket = OrderSend(_Symbol, OP_SELL, lots, openPrice, 300, st, tp, EA_COMMENT, EA_MAGIC, 0, 0);
    if (ticket < 0) {
        printf("Open new order fail.");
        return;
    }
    
    NewOrderUpdate(areaIdx, areaStep);
    LatesOrderUpdate(areaIdx, areaStep);
    
}

int NewOrderUpdate(int areaIdx, int areaStep)
{
    g_ordNew_areaIdx = areaIdx;
    g_ordNew_areaStep = areaStep;
    g_ordNew_onStep = GetAreaStepPos(g_ordNew_areaIdx, g_ordNew_areaStep);
    return 0;
}
int LatesOrderUpdate(int areaIdx, int areaStep)
{
    g_latestOpenTime = TimeCurrent();
    g_latestOpenArea[g_latestIdx] = g_ordNew_areaIdx;
    g_latestAreaStep[g_latestIdx] = g_ordNew_areaStep;
    g_latestOnStep[g_latestIdx]   = g_ordNew_onStep;
    g_latestIdx++;    
    if (g_latestIdx >= LatestMax) {
        g_latestIdx = 0;
    }

    return 0;
}


void InitEaOrderPara()
{
    sell_open[0] = sell_open_0;sell_open[1] = sell_open_1;sell_open[2] = sell_open_2;sell_open[3] = sell_open_3;sell_open[4] = sell_open_4;sell_open[5] = sell_open_5;sell_open[6] = sell_open_6;sell_open[7] = sell_open_7;sell_open[8] = sell_open_8;sell_open[9] = sell_open_9;sell_open[10] = sell_open_10;sell_open[11] = sell_open_11;sell_open[12] = sell_open_12;sell_open[13] = sell_open_13;sell_open[14] = sell_open_14;sell_open[15] = sell_open_15;sell_open[16] = sell_open_16;sell_open[17] = sell_open_17;sell_open[18] = sell_open_18;sell_open[19] = sell_open_19;sell_open[20] = sell_open_20;
    sell_price[0] = sell_price_0;sell_price[1] = sell_price_1;sell_price[2] = sell_price_2;sell_price[3] = sell_price_3;sell_price[4] = sell_price_4;sell_price[5] = sell_price_5;sell_price[6] = sell_price_6;sell_price[7] = sell_price_7;sell_price[8] = sell_price_8;sell_price[9] = sell_price_9;sell_price[10] = sell_price_10;sell_price[11] = sell_price_11;sell_price[12] = sell_price_12;sell_price[13] = sell_price_13;sell_price[14] = sell_price_14;sell_price[15] = sell_price_15;sell_price[16] = sell_price_16;sell_price[17] = sell_price_17;sell_price[18] = sell_price_18;sell_price[19] = sell_price_19;sell_price[20] = sell_price_20;
    sell_open_max[0] = sell_open_max_0;sell_open_max[1] = sell_open_max_1;sell_open_max[2] = sell_open_max_2;sell_open_max[3] = sell_open_max_3;sell_open_max[4] = sell_open_max_4;sell_open_max[5] = sell_open_max_5;sell_open_max[6] = sell_open_max_6;sell_open_max[7] = sell_open_max_7;sell_open_max[8] = sell_open_max_8;sell_open_max[9] = sell_open_max_9;sell_open_max[10] = sell_open_max_10;sell_open_max[11] = sell_open_max_11;sell_open_max[12] = sell_open_max_12;sell_open_max[13] = sell_open_max_13;sell_open_max[14] = sell_open_max_14;sell_open_max[15] = sell_open_max_15;sell_open_max[16] = sell_open_max_16;sell_open_max[17] = sell_open_max_17;sell_open_max[18] = sell_open_max_18;sell_open_max[19] = sell_open_max_19;sell_open_max[20] = sell_open_max_20;
    sell_price_step[0] = sell_price_step_0;sell_price_step[1] = sell_price_step_1;sell_price_step[2] = sell_price_step_2;sell_price_step[3] = sell_price_step_3;sell_price_step[4] = sell_price_step_4;sell_price_step[5] = sell_price_step_5;sell_price_step[6] = sell_price_step_6;sell_price_step[7] = sell_price_step_7;sell_price_step[8] = sell_price_step_8;sell_price_step[9] = sell_price_step_9;sell_price_step[10] = sell_price_step_10;sell_price_step[11] = sell_price_step_11;sell_price_step[12] = sell_price_step_12;sell_price_step[13] = sell_price_step_13;sell_price_step[14] = sell_price_step_14;sell_price_step[15] = sell_price_step_15;sell_price_step[16] = sell_price_step_16;sell_price_step[17] = sell_price_step_17;sell_price_step[18] = sell_price_step_18;sell_price_step[19] = sell_price_step_19;sell_price_step[20] = sell_price_step_20;
    sell_lots[0] = sell_lots_0;sell_lots[1] = sell_lots_1;sell_lots[2] = sell_lots_2;sell_lots[3] = sell_lots_3;sell_lots[4] = sell_lots_4;sell_lots[5] = sell_lots_5;sell_lots[6] = sell_lots_6;sell_lots[7] = sell_lots_7;sell_lots[8] = sell_lots_8;sell_lots[9] = sell_lots_9;sell_lots[10] = sell_lots_10;sell_lots[11] = sell_lots_11;sell_lots[12] = sell_lots_12;sell_lots[13] = sell_lots_13;sell_lots[14] = sell_lots_14;sell_lots[15] = sell_lots_15;sell_lots[16] = sell_lots_16;sell_lots[17] = sell_lots_17;sell_lots[18] = sell_lots_18;sell_lots[19] = sell_lots_19;sell_lots[20] = sell_lots_20;
    sell_tp[0] = sell_tp_0;sell_tp[1] = sell_tp_1;sell_tp[2] = sell_tp_2;sell_tp[3] = sell_tp_3;sell_tp[4] = sell_tp_4;sell_tp[5] = sell_tp_5;sell_tp[6] = sell_tp_6;sell_tp[7] = sell_tp_7;sell_tp[8] = sell_tp_8;sell_tp[9] = sell_tp_9;sell_tp[10] = sell_tp_10;sell_tp[11] = sell_tp_11;sell_tp[12] = sell_tp_12;sell_tp[13] = sell_tp_13;sell_tp[14] = sell_tp_14;sell_tp[15] = sell_tp_15;sell_tp[16] = sell_tp_16;sell_tp[17] = sell_tp_17;sell_tp[18] = sell_tp_18;sell_tp[19] = sell_tp_19;sell_tp[20] = sell_tp_20;
    sell_dly[0] = sell_dly_0;sell_dly[1] = sell_dly_1;sell_dly[2] = sell_dly_2;sell_dly[3] = sell_dly_3;sell_dly[4] = sell_dly_4;sell_dly[5] = sell_dly_5;sell_dly[6] = sell_dly_6;sell_dly[7] = sell_dly_7;sell_dly[8] = sell_dly_8;sell_dly[9] = sell_dly_9;sell_dly[10] = sell_dly_10;sell_dly[11] = sell_dly_11;sell_dly[12] = sell_dly_12;sell_dly[13] = sell_dly_13;sell_dly[14] = sell_dly_14;sell_dly[15] = sell_dly_15;sell_dly[16] = sell_dly_16;sell_dly[17] = sell_dly_17;sell_dly[18] = sell_dly_18;sell_dly[19] = sell_dly_19;sell_dly[20] = sell_dly_20;
    sell_step_dly[0] = sell_step_dly_0;sell_step_dly[1] = sell_step_dly_1;sell_step_dly[2] = sell_step_dly_2;sell_step_dly[3] = sell_step_dly_3;sell_step_dly[4] = sell_step_dly_4;sell_step_dly[5] = sell_step_dly_5;sell_step_dly[6] = sell_step_dly_6;sell_step_dly[7] = sell_step_dly_7;sell_step_dly[8] = sell_step_dly_8;sell_step_dly[9] = sell_step_dly_9;sell_step_dly[10] = sell_step_dly_10;sell_step_dly[11] = sell_step_dly_11;sell_step_dly[12] = sell_step_dly_12;sell_step_dly[13] = sell_step_dly_13;sell_step_dly[14] = sell_step_dly_14;sell_step_dly[15] = sell_step_dly_15;sell_step_dly[16] = sell_step_dly_16;sell_step_dly[17] = sell_step_dly_17;sell_step_dly[18] = sell_step_dly_18;sell_step_dly[19] = sell_step_dly_19;sell_step_dly[20] = sell_step_dly_20;
}
void InitEaHistOrderPara()
{
    int tick, eaTicks[100] = {0};
    datetime eaOpenTime[100] = {0};
    int eaOrdNum=0;
    double openPrice;
    for (int pos=OrdersTotal(); pos>=0; pos--)
    {
        if(OrderSelect(pos,SELECT_BY_POS,MODE_TRADES) == false) {
            continue;
        }
        printf("tick:%d Magic:%d", OrderTicket(), OrderMagicNumber());
        if (OrderMagicNumber() != EA_MAGIC) {
            continue;
        }
        if(OrderSymbol() != Symbol()) {
            continue;
        }
        eaTicks[eaOrdNum] = OrderTicket();
        eaOpenTime[eaOrdNum] = OrderOpenTime();
        eaOrdNum++;
        
    }
    
    //根据opentime进行ticket排序，从小到大.
    for (int i=0; i<eaOrdNum; ++i)
    {
        for (int j=i+1; j<eaOrdNum; j++)
        {
            if (eaOpenTime[j]<eaOpenTime[i])
            {
                tick = eaTicks[i];
                eaTicks[i] = eaTicks[j];
                eaTicks[j] = tick;
            }
        }
    }
    
    g_latestIdx = 0;
    int area, step, areaStep;
    for (int i=0; i<eaOrdNum; ++i)
    {
        if (OrderSelect(eaTicks[i], SELECT_BY_TICKET) == false)
        {
            continue;
        }
        openPrice = OrderOpenPrice();
        area = WhichPriceArea(openPrice);
        step = WhichAreaStep(area, openPrice);
        areaStep = GetAreaStepPos(area, step);
        g_latestOpenArea[g_latestIdx] = area;
        g_latestAreaStep[g_latestIdx] = step;
        g_latestOnStep[g_latestIdx]   = areaStep;
        g_latestIdx++;
        if (g_latestIdx >= LatestMax) {
            g_latestIdx = 0;
        }
    }
}

//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   
  }
//+------------------------------------------------------------------+


//int OrderCheck(int ticket)
//{
//    if (WhichPriceArea(Bid) != 0) {
//        printf("Price is out side of price area specified");
//        return -1;
//    }
//    
//    return 0;
//}


/*


int GetInterval_CurOrder(int areaIdx, int areaStep)
{
    int onStep = (areaIdx - 1)*EREA_STEP_MAX + areaStep;
    int delay = 0;
    if (onStep >= g_latestOnStep[g_latestIdx]) {
        delay = areaIdx * area_delay + areaStep * step_delay;
        if (TimeCurrent() - g_latestOpenTime > delay) {
            return true;
        }
    }

    return false;
}



*/

   /*
    //onStep > g_latestOnStep[last1]
    
    if ( () ) {
        return true;
    }
    
    //g_latestOnStep[last1] > g_latestOnStep[last2]
    diff = TimeCurrent() - g_latestOpenTime;              
    dly = sell_dly[g_latestOpenArea[last1]] + sell_dly[areaIdx];  
    if (diff > dly) {
        g_contiOrders = 2;
        if (2) {
            return true;
        } else {
            return false;
        }
        
    } else {
        return false;
    }
            printf("3-dly:%d, diff=%d", dly, diff);

    
    
    
        if ( (g_latestOnStep[last1] > g_latestOnStep[last2])
          && (g_latestOnStep[last2] > g_latestOnStep[last3]) 
          && (g_latestOnStep[last3] > g_latestOnStep[last4]) ) {
            dly = sell_dly[g_latestOpenArea[last1]] 
                + sell_dly[g_latestOpenArea[last2]] 
                + sell_dly[g_latestOpenArea[last3]] 
                + sell_dly[areaIdx];
            diff = TimeCurrent() - g_latestOpenTime;
            if (diff > dly) {
                g_contiOrders = 4;
                return true;
            }
            printf("1-dly:%d, diff=%d", dly, diff);
        }
        
        if ( (g_latestOnStep[last1] > g_latestOnStep[last2])
          && (g_latestOnStep[last2] > g_latestOnStep[last3]) ) {
            dly = sell_dly[g_latestOpenArea[last1]] 
                + sell_dly[g_latestOpenArea[last2]] 
                + sell_dly[areaIdx];
            if (diff > dly) {
                g_contiOrders = 3;
                return true;
            }
            printf("2-dly:%d, diff=%d", dly, diff);
        }
    
 
        
        if (g_latestOnStep[last1] == 0) {
            g_contiOrders = 1;
            return true;
        }
        if (onStep > g_latestOnStep[last2]) {
            return true;
        }
        return false;

*/


/*
int GetPriceAreaOrdNum()
{
   int areaIdx;
   int areaStep;
   areaIdx = WhichPriceArea(Bid);
   if (areaIdx == EREA_LEN) {
      return -1;
   }
   areaStep = WhichAreaStep(areaIdx);
   if (areaStep == EREA_STEP_MAX) {
      return -1;
   }
   
   return sell_orders[areaIdx][areaStep];
}
*/
