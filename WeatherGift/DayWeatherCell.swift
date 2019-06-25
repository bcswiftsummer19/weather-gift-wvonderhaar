//
//  DayWeatherCell.swift
//  WeatherGift
//
//  Created by Walker Vonder Haar on 6/20/19.
//  Copyright © 2019 Walker Vonder Haar. All rights reserved.
//


import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE"
    return dateFormatter
} ()

class DayWeatherCell: UITableViewCell {

    @IBOutlet weak var dayCellIcon: UIImageView!
    @IBOutlet weak var dayCellWeekDay: UILabel!
    @IBOutlet weak var dayCellMaxTemp: UILabel!
    @IBOutlet weak var dayCellMinTemp: UILabel!
    @IBOutlet weak var dayCellSummary: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func update(with dailyForcast: WeatherDetail.DailyForecast, timeZone: String) {
        dayCellIcon.image = UIImage(named: dailyForcast.dailyIcon)
        dayCellSummary.text = dailyForcast.dailySummary
        dayCellMaxTemp.text = String(format: "%2.f", dailyForcast.dailyMaxTemp) + "°"
        dayCellMinTemp.text = String(format: "%2.f", dailyForcast.dailyMinTemp) + "°"


        let dateString = dailyForcast.dailyDate.format(timeZone: timeZone, dateFormatter: dateFormatter)

        dayCellWeekDay.text = dateString
    }

}
