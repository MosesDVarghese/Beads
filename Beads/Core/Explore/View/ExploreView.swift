//
//  ExploreView.swift
//  Beads
//
//  Created by Moses Varghese on 9/11/24.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.searchableUsers) { user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                                    .padding(.leading, 60)
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Search")
            .searchable(text: $viewModel.searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
