//
//  AccountView.swift
//  Appetizers
//
//  Created by İbrahim Bayram on 13.09.2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            Text("AccountView")
                .navigationTitle(Text("👤 Account"))
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
