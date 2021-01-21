//
//  widgetModel.swift
//  widgetModel
//
//  Created by User04 on 2021/1/20.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct widgetModelEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ZStack{
            //Color.black.edgesIgnoringSafeArea(.all)
            Image("earth")
                .resizable()
                .unredacted()
//                .clipShape(Circle())
//                .offset(x: 10, y:0)
//                .frame(width: 120, height: 80, alignment: .center)
        
        
        
            Text(entry.date, style: .time)
                .foregroundColor(.orange)
        }
    }
}

@main
struct widgetModel: Widget {
    let kind: String = "space"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            widgetModelEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct widgetModel_Previews: PreviewProvider {
    static var previews: some View {
        widgetModelEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
