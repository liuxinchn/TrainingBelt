//
//  temp.swift
//  BluetoothDemo
//
//  Created by liuxin on 2022/1/8.
//

import Foundation

class temp {
    private var dataArray = [20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000]
    
    
//    private var dataArray1 = [23810
//    , 23810
//    , 23810
//    , 23810
//    , 23810
//    , 23554
//    , 23554
//    , 23298
//    , 22530
//    , 21762
//    , 20738
//    , 19970
//    , 19714
//    , 19458
//    , 18946
//    , 17690
//    , 17690
//    , 17178
//    , 15922
//    , 13178
//    , 13922
//    , 14666
//    , 15666
//    , 15666
//    , 16666
//    , 16666
//    , 16922
//    , 11778
//    , 18178
//    , 18178
//    , 18178
//    , 18434
//    , 18690
//    , 18946
//    , 19458
//    , 19714
//    , 20482
//    , 21250
//    , 21762
//    , 22786
//    , 23810
//    , 24578
//    , 26114
//    , 27138
//    , 27906
//    , 28674
//    , 28930
//    , 29442
//    , 29954
//    , 30466
//    , 30978
//    , 37234
//    , 36490
//    , 36490
//    , 34978
//    , 33722
//    , 32210
//    , 29442
//    , 28418
//    , 27906
//    , 27138
//    , 26114
//    , 25090
//    , 24322
//    , 23810
//    , 23298
//    , 22786
//    , 22530
//    , 22018
//    , 20762
//    , 20762
//    , 20762
//    , 20762
//    , 22018
//    , 22018
//    , 22274
//    , 23042
//    , 23810
//    , 24578
//    , 26114
//    , 27906
//    , 29418
//    , 30442
//    , 31210
//    , 32234
//    , 33746
//    , 34258
//    , 33514
//    , 32026
//    , 31026
//    , 32770
//    , 33770
//    , 31258
//    , 30002
//    , 29746
//    , 30722
//    , 30210
//    , 29698
//    , 29698
//    , 28930
//    , 28162
//    , 28162
//    , 27650
//    , 26626
//    , 26114
//    , 25346
//    , 24578
//    , 24066
//    , 23554
//    , 22530
//    , 21762
//    , 21250
//    , 20738
//    , 20482
//    , 20226
//    , 19970
//    , 19970
//    , 19714
//    , 19714
//    , 19458
//    , 19458
//    , 19458
//    , 19714
//    , 19970
//    , 20994
//    , 22274
//    , 24322
//    , 25858
//    , 27650
//    , 29442
//    , 30722
//    , 31746
//    , 32002
//    , 32514
//    , 33282
//    , 33538
//    , 39050
//    , 39050
//    , 38562
//    , 38562
//    , 37562
//    , 37306
//    , 35306
//    , 34306
//    , 34562
//    , 34306
//    , 34306
//    , 33794
//    , 32770
//    , 31746
//    , 30466
//    , 28930
//    , 27906
//    , 26882
//    , 26114
//    , 25346
//    , 24322
//    , 24066
//    , 23810
//    , 23810
//    , 23810
//    , 23554
//    , 23810
//    , 23554
//    , 23554
//    , 23554
//    , 23810
//    , 23298
//    , 23554
//    , 23810
//    , 23810
//    , 24578
//    , 25858
//    , 26882
//    , 28418
//    , 30210
//    , 31746
//    , 30258
//    , 30514
//    , 30770
//    , 30794
//    , 30562
//    , 31330
//    , 31842
//    , 32098
//    , 32354
//    , 32610
//    , 33122
//    , 34146
//    , 34146
//    , 33146
//    , 33146
//    , 33146
//    , 37634
//    , 36866
//    , 36098
//    , 34306
//    , 31746
//    , 29442
//    , 28162
//    , 26882
//    , 26114
//    , 25346
//    , 24322
//    , 23554
//    , 23298
//    , 22786
//    , 22274
//    , 21762
//    , 21506
//    , 21506
//    , 20738
//    , 20482
//    , 20482
//    , 20482
//    , 20738
//    , 20226
//    , 20482
//    , 20482
//    , 20738
//    , 20738
//    , 20738
//    , 20682
//    , 20538
//    , 20538
//    , 20538
//    , 20582
//    , 20538
//    , 20594
//    , 20538
//    , 20482]
//
//    private var dataArray2 = [23810
//    , 23810
//    , 23810
//    , 23810
//    , 23810
//    , 23554
//    , 23554
//    , 23298
//    , 22530
//    , 21762
//    , 20738
//    , 19970
//    , 19714
//    , 19458
//    , 18946
//    , 18690
//    , 18690
//    , 18178
//    , 17922
//    , 18178
//    , 17922
//    , 17666
//    , 17666
//    , 17666
//    , 17666
//    , 17666
//    , 17922
//    , 18178
//    , 18178
//    , 18178
//    , 18178
//    , 18434
//    , 18690
//    , 18946
//    , 19458
//    , 19714
//    , 20482
//    , 21250
//    , 21762
//    , 22786
//    , 23810
//    , 24578
//    , 26114
//    , 27138
//    , 27906
//    , 28674
//    , 28930
//    , 29442
//    , 29954
//    , 30466
//    , 30978
//    , 31234
//    , 31490
//    , 31490
//    , 30978
//    , 30722
//    , 30210
//    , 29442
//    , 28418
//    , 27906
//    , 27138
//    , 26114
//    , 25090
//    , 24322
//    , 23810
//    , 23298
//    , 22786
//    , 22530
//    , 22018
//    , 21762
//    , 21762
//    , 21762
//    , 21762
//    , 22018
//    , 22018
//    , 22274
//    , 23042
//    , 23810
//    , 24578
//    , 26114
//    , 27906
//    , 28418
//    , 29442
//    , 30210
//    , 31234
//    , 31746
//    , 32258
//    , 32514
//    , 33026
//    , 33026
//    , 32770
//    , 32770
//    , 32258
//    , 32002
//    , 31746
//    , 30722
//    , 30210
//    , 29698
//    , 29698
//    , 28930
//    , 28162
//    , 28162
//    , 27650
//    , 26626
//    , 26114
//    , 25346
//    , 24578
//    , 24066
//    , 23554
//    , 22530
//    , 21762
//    , 21250
//    , 20738
//    , 20482
//    , 20226
//    , 19970
//    , 19970
//    , 19714
//    , 19714
//    , 19458
//    , 19458
//    , 19458
//    , 19714
//    , 19970
//    , 20994
//    , 22274
//    , 24322
//    , 25858
//    , 27650
//    , 29442
//    , 30722
//    , 31746
//    , 32002
//    , 32514
//    , 33282
//    , 33538
//    , 34050
//    , 34050
//    , 34562
//    , 34562
//    , 34562
//    , 34306
//    , 34306
//    , 34306
//    , 34562
//    , 34306
//    , 34306
//    , 33794
//    , 32770
//    , 31746
//    , 30466
//    , 28930
//    , 27906
//    , 26882
//    , 26114
//    , 25346
//    , 24322
//    , 24066
//    , 23810
//    , 23810
//    , 23810
//    , 23554
//    , 23810
//    , 23554
//    , 23554
//    , 23554
//    , 23810
//    , 23298
//    , 23554
//    , 23810
//    , 23810
//    , 24578
//    , 25858
//    , 26882
//    , 28418
//    , 30210
//    , 31746
//    , 32258
//    , 32514
//    , 32770
//    , 33794
//    , 34562
//    , 35330
//    , 35842
//    , 36098
//    , 36354
//    , 36610
//    , 37122
//    , 38146
//    , 38146
//    , 38146
//    , 38146
//    , 38146
//    , 37634
//    , 36866
//    , 36098
//    , 34306
//    , 31746
//    , 29442
//    , 28162
//    , 26882
//    , 26114
//    , 25346
//    , 24322
//    , 23554
//    , 23298
//    , 22786
//    , 22274
//    , 21762
//    , 21506
//    , 21506
//    , 20738
//    , 20482
//    , 20482
//    , 20482
//    , 20738
//    , 20226
//    , 20482
//    , 20482
//    , 20738
//    , 20738
//    , 20738
//    , 20482
//    , 20738
//    , 20738
//    , 20738
//    , 20482
//    , 20738
//    , 20994
//    , 20738
//    , 20482]
    
    
//    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
//        let chartModelSeriesArray = [AASeriesElement()
//            .name("数据")
//            .data([6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6, 0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1])
//            ]
//        self.aaChartView?.aa_onlyRefreshTheChartDataWithChartModelSeries(chartModelSeriesArray)
//    }
}
