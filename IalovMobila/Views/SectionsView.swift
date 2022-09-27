//
//  SectionsView.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 27.09.2022.
//

import SwiftUI

struct SectionsView: View {
    var body: some View {
        NavigationView {
            Text("Sections View")
            
                .navigationTitle("Sections")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
