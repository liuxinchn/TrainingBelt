//
//  ViewController.swift
//  BluetoothDemo
//
//  Created by liuxin on 2021/11/4.
//  蓝牙数据展示ViewController

import UIKit
import CoreBluetooth
import AAInfographics

class ViewController: UIViewController {
    
    private var centralManager: CBCentralManager?
    private var peripheral: CBPeripheral?
    private var characteristic: CBCharacteristic?
    
    private let deviceUUID = "HC-08"
    private let serviceUUID = "FFE0"
    private let characteristicUUID = "FFE1"
    
    @IBOutlet weak var aaChartView: AAChartView!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    private var resetTimer: Timer!
    
    private var dataArray: [Int]! = [Int](repeating: 0, count: 250)
    private var floatArray: [Float]! = [Float](repeating: 0, count: 250)
    private var dataStandard1: [Int]!
    private var dataStandard2: [Int]!
    private var dataStandard3: [Int]!
    
    private var min: Int = 65535
    private var max: Int = 0
    private var interval = 65536
    private var timerCount = 0
    private var onReset: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for _ in 0..<250 {
//            dataArray.append(20000)
////            dataStandard1.append(10000)
////            dataStandard2.append(20000)
////            dataStandard3.append(30000)
//        }
        
        //数据源
        let aachartModel = AAChartModel()
                    .chartType(.line)   //图表类型
                    .title("")          //图表主标题
                    .inverted(false)    //是否翻转图形
                    .zoomType(.none)    //禁用图表手势缩放功能
                    .yAxisTitle("")     // Y 轴标题
                    .yAxisMin(00000)    // Y 最小值
                    .yAxisMax(65000)    // Y 最大值
                    .markerRadius(0.0)  //点标记点的半径。默认为4
                    .markerSymbol(.square)  //折线曲线连接点的类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                    .dataLabelsEnabled(false)   //数据标签是否显示
                    .xAxisLabelsEnabled(false)  //x 轴是否显示数据
                    .yAxisLabelsEnabled(true)   //y 轴是否显示数据
                    .tooltipEnabled(false)      //是否显示浮动提示框(默认显示)
                    .colorsTheme(["#fe117c"])   //主题颜色数组
                    .series([                   //数据源
                        AASeriesElement()
                            .name("数据1")
                            .data(dataArray),
//                        AASeriesElement()
//                            .name("标准1")
//                            .data(dataStandard1),
//                        AASeriesElement()
//                            .name("标准2")
//                            .data(dataStandard2),
//                        AASeriesElement()
//                            .name("标准3")
//                            .data(dataStandard2),
                        ])
        
        /*图表视图对象调用图表模型对象,绘制最终图形*/
        aaChartView?.aa_drawChartWithChartModel(aachartModel)
        
        //开启蓝牙
        centralManager = CBCentralManager.init(delegate: self, queue: .main)
        
        //定时器
        resetTimer = Timer(timeInterval: 1, target: self, selector: #selector(ViewController.cycleTimer), userInfo: nil, repeats: true)
        RunLoop.current.add(resetTimer, forMode: .default)
        self.resetClick(self.resetBtn)
    }
    
    //退出ViewController关闭蓝牙连接
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        guard let peripheral = self.peripheral else {
            return
        }
        self.centralManager?.cancelPeripheralConnection(peripheral)
        self.peripheral=nil
        self.centralManager=nil
    }
    
    @IBAction func resetClick(_ sender: UIButton) {
        onReset = true
        min = 65535
        max = 0
        timerCount = 0
        resetTimer.fire()
//        print("============启动了resetClick========")
        //数据源
        let aachartModel = AAChartModel()
                    .chartType(.line)   //图表类型
                    .title("")          //图表主标题
                    .inverted(false)    //是否翻转图形
                    .zoomType(.none)    //禁用图表手势缩放功能
                    .yAxisTitle("")     // Y 轴标题
                    .yAxisMin(00000)    // Y 最小值
                    .yAxisMax(65000)    // Y 最大值
                    .markerRadius(0.0)  //点标记点的半径。默认为4
                    .markerSymbol(.square)  //折线曲线连接点的类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                    .dataLabelsEnabled(false)   //数据标签是否显示
                    .xAxisLabelsEnabled(false)  //x 轴是否显示数据
                    .yAxisLabelsEnabled(true)   //y 轴是否显示数据
                    .tooltipEnabled(false)      //是否显示浮动提示框(默认显示)
                    .colorsTheme(["#fe117c"])   //主题颜色数组
                    .series([                   //数据源
                        AASeriesElement()
                            .name("数据1")
                            .data(dataArray)
                        ])
        
        /*图表视图对象调用图表模型对象,绘制最终图形*/
        aaChartView?.aa_refreshChartWholeContentWithChartModel(aachartModel)
    }
}

extension ViewController {
    @objc func cycleTimer() {
        timerCount += 1
//        print("=============timecount=\(timerCount)==============")
        if timerCount >= 30 {
            onReset = false
//            print("============onReset=\(onReset)==============")
            resetTimer.invalidate()
            
            interval = max - min
            
            //数据源
            let aachartModel = AAChartModel()
                        .chartType(.line)   //图表类型
                        .title("")          //图表主标题
                        .inverted(false)    //是否翻转图形
                        .zoomType(.none)    //禁用图表手势缩放功能
                        .yAxisTitle("")     // Y 轴标题
                        .yAxisMin(0)    // Y 最小值
                        .yAxisMax(1)    // Y 最大值
                        .markerRadius(0.0)  //点标记点的半径。默认为4
                        .markerSymbol(.square)  //折线曲线连接点的类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                        .dataLabelsEnabled(false)   //数据标签是否显示
                        .xAxisLabelsEnabled(false)  //x 轴是否显示数据
                        .yAxisLabelsEnabled(true)   //y 轴是否显示数据
                        .tooltipEnabled(false)      //是否显示浮动提示框(默认显示)
                        .colorsTheme(["#fe117c"])   //主题颜色数组
                        .series([                   //数据源
                            AASeriesElement()
                                .name("数据1")
                                .data(floatArray)
                            ])
            
            /*图表视图对象调用图表模型对象,绘制最终图形*/
            aaChartView?.aa_refreshChartWholeContentWithChartModel(aachartModel)
        }
        self.progressView.setProgress(Float(timerCount)/30, animated: true)
    }
}


extension ViewController: CBCentralManagerDelegate, CBPeripheralDelegate {
    
    //MARK: - CBCentralManagerDelegate
    // 判断手机蓝牙状态
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            print("蓝牙未知")
        case .resetting:
            print("蓝牙重置中")
        case .unsupported:
            print("蓝牙不支持")
        case .unauthorized:
            print("蓝牙未验证")
        case .poweredOff:
            print("蓝牙未启动")
        case .poweredOn:
            print("蓝牙可用")
            central.scanForPeripherals(withServices: nil, options: nil)
        default:
            print("蓝牙情况default")
        }
    }
    
    // 发现符合要求的外设
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        if peripheral.name == deviceUUID {
            self.peripheral = peripheral
        }
        central.connect(peripheral, options: nil)
    }
    
    // 外设连接成功
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("外设连接成功")
        self.centralManager?.stopScan()
        peripheral.delegate = self
        peripheral.discoverServices([CBUUID.init(string: serviceUUID)])
    }
    
    // 外设连接失败
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        print("外设连接失败")
    }
    
    // 外设断开连接
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        print("外设断开连接")
    }
    
    //MARK: - CBPeripheralDelegate
    // 发现服务
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        guard let services = peripheral.services else {
            return
        }
        let service = services.last
        peripheral.discoverCharacteristics(nil, for: service!)
    }
    
    // 订阅
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        guard let characteristics = service.characteristics else {
            return
        }
        self.characteristic = characteristics.last
        // 订阅
        peripheral.setNotifyValue(true, for: self.characteristic!)
    }
    
    //MARK: - Notify
    // 订阅状态
    func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?) {
        if let error = error {
            print("订阅失败: \(error)")
            return
        }
        if characteristic.isNotifying {
            print("订阅成功")
        } else {
            print("取消订阅")
        }
    }
    
    // 接收到数据
    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        let data = characteristic.value
        guard let data = data else {
            print("未接收到Notify数据")
            return
        }
        let front = Int(data[2])
        let rear = Int(data[3])
        guard front != 0 else {
            return
        }
        let count = front * 256 + rear;
        if onReset == true {
            if count > max {
                max = count
            }
            if count < min {
                min = count
            }
            dataArray.remove(at: 0)
            dataArray.append(count);
            let chartModelSeriesArray = [AASeriesElement()
                .name("数据")
                .data(dataArray)
            ]
            self.aaChartView?.aa_onlyRefreshTheChartDataWithChartModelSeries(chartModelSeriesArray)
        } else {
            let floats = Float(count/interval)
            floatArray.remove(at: 0)
            floatArray.append(floats);
            let chartModelSeriesArray = [AASeriesElement()
                .name("数据")
                .data(floatArray)
            ]
            self.aaChartView?.aa_onlyRefreshTheChartDataWithChartModelSeries(chartModelSeriesArray)
        }
    }
}

