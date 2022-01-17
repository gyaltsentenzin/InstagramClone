//
//  Navigation.swift
//  InstagramClone
//
//  Created by Tenzin Gyaltsen on 1/16/22.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        HStack{
            Image(Asset.logo.name)
            Spacer()
            ForEach(["add","heart","messenger"], id:\.self){ imageName in
                    NavigationLink(
                        destination: Text(imageName)){
                           Image(imageName)
                        }
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
