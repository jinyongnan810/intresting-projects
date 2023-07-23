//
//  NewsWidgets.swift
//  NewsWidgets
//
//  Created by きんゆうなん on 2023/07/23.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: TimelineProvider {
    // Placeholder is used as a placeholder when the widget is first displayed
        func placeholder(in context: Context) -> NewsArticleEntry {
    //      Add some placeholder title and description, and get the current date
          NewsArticleEntry(date: Date(), title: "Placeholder Title", description: "Placeholder description")
        }

    // Snapshot entry represents the current time and state
        func getSnapshot(in context: Context, completion: @escaping (NewsArticleEntry) -> Void) {
          let entry: NewsArticleEntry
          if context.isPreview {
            entry = placeholder(in: context)
          } else {
            //      Get the data from the user defaults to display
            let userDefaults = UserDefaults(suiteName: "group.kin.homewidget")
            let title = userDefaults?.string(forKey: "headline_title") ?? "No Title Set"
            let description = userDefaults?.string(forKey: "headline_description") ?? "No Description Set"
            entry = NewsArticleEntry(date: Date(), title: title, description: description)
          }
            completion(entry)
        }

    //    getTimeline is called for the current and optionally future times to update the widget
        func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
    //      This just uses the snapshot function you defined earlier
          getSnapshot(in: context) { (entry) in
    // atEnd policy tells widgetkit to request a new entry after the date has passed
            let timeline = Timeline(entries: [entry], policy: .atEnd)
                      completion(timeline)
                  }
        }
    }

struct NewsArticleEntry: TimelineEntry {
    let date: Date
    let title: String
    let description: String
}

struct NewsWidgetsEntryView: View {
    var entry: Provider.Entry

    var body: some View {
      VStack {
        Text(entry.title)
        Text(entry.description)
      }
    }
}

struct NewsWidgets: Widget {
    let kind: String = "NewsWidgets"

    var body: some WidgetConfiguration {
            StaticConfiguration(kind: kind, provider: Provider()) { entry in
                NewsWidgetsEntryView(entry: entry)
            }
            .configurationDisplayName("My Home Widget")
            .description("This is an example home widget.")
        }
}

// struct NewsWidgets_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsWidgetsEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
// }
