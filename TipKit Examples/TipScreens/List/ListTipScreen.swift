//
//  ListScreen.swift
//  TipKit Examples
//
//  Created by Jordi Bruin on 02/08/2023.
//

import SwiftUI

struct ListTipScreen: View {
    var body: some View {
        List {
            ForEach(1...4, id: \.self) { index in
                Button {
                    ListCellTip.showTip.donate()
                } label: {
                    Text("Index \(index)")
                }
                .popoverTip(ListCellTip(), arrowEdge: .top)
            }
        }
        .navigationTitle("List Cell Tip")
    }
}

#Preview {
    ListTipScreen()
}

