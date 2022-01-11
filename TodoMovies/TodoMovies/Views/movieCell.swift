//
//  movieCell.swift
//  TodoMovies
//
//  Created by victoredbc on 10/01/22.
//

import SwiftUI

struct movieCell: View {
    var body: some View {
        GeometryReader { view in
            HStack {
                HStack {
                    movieImage
                        .frame(width: view.size.width * 0.2, height: view.size.height * 0.15, alignment: .center)
                    textMovieDescription()
                }
                Spacer()
                checkmarkCellButtom()
            }
            .frame(width: view.size.width, height: view.size.height * 0.15, alignment: .center)
            .foregroundColor(Color("primaryWhite"))
            .background(Color("primaryBlack"))
        }
    }
}

var movieImage: some View {
    Image(systemName: "camera")
}

struct textMovieDescription: View {
    var body: some View {
        VStack {
            HStack {
                Text("Edward Scissorhands")
                    .font(.system(size: 24, weight: .regular, design: .default))
                Spacer()
            }
            HStack {
                Text("1992")
                Text("Drama, comedy")
                Spacer()
            }
            .font(.system(size: 16, weight: .regular, design: .default))
        }
    }
}

struct checkmarkCellButtom: View {
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle.fill")
            Spacer()
        }
    }
}














struct movieCell_Previews: PreviewProvider {
    static var previews: some View {
        movieCell()
    }
}
