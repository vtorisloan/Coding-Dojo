//
//  TesterApp.swift
//  Tester
//
//  Created by tori Sloan on 2/8/24.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct TesterApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: TesterMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct TesterMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        TesterVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct TesterVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
