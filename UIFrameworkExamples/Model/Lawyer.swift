//
//  Lawyer.swift
//  UIFrameworkExamples
//
//  Created by Jean Cabral on 8/3/18.
//  Copyright © 2018 Jean Cabral. All rights reserved.
//

import Foundation

struct Lawyer: Decodable{
    
    
    let registrationNumber: String?
    let firstName: String?
    let middleName: String?
    let lastName: String?
    let suffix: String?
    let companyName: String?
    let street1: String?
    let street2: String?
    let city: String?
    let state: String?
    let zip: String?
    let zipPlusFour: String?
    let country: String?
    let county: String?
    let phoneNumber: String?
    let yearAdmitted: String?
    let judicialDepartmentOfAdmission: String?
    let lawSchool: String?
    let status: String?
    let nextRegistration: String?
    
    
//    private enum CodingKeys: String, CodingKey{
//        case companyName = "company_name"
//        case firstName = "first_name"
//        case middleName = "middle_name"
//        case lastName = "last_name"
//        case judicialDepartmentOfAdmission = "judicial_department_of_admission"
//        case lawSchool = "law_school"
//        case registrationNumber = "registration_number"
//        case nextRegistration = "next_registration"
//        case street1 = "street_1"
//        case street2 = "street_2"
//        case phoneNumber = "phone_number"
//        case yearAdmitted = "year_admitted"
//        case zipPlusFour = "zip_plus_four"
//        
//        case suffix, city, state, zip, country, county, status
//    }
    
}
