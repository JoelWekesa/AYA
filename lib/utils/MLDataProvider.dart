import 'package:aya_mobile/model/EducationData.dart';
import 'package:aya_mobile/model/MLPatientData.dart';
import 'package:aya_mobile/model/cadre_model.dart';
import 'package:aya_mobile/model/education_list.dart';
import 'package:flutter/material.dart';

import 'package:aya_mobile/components/practitioner_list_component.dart';
import 'package:aya_mobile/components/facility_list_component.dart';
import 'package:aya_mobile/components/internship_Component.dart';

import 'package:aya_mobile/model/MLDepartmentData.dart';
import 'package:aya_mobile/model/PractitionerData.dart';
import 'package:aya_mobile/model/knowledge_base.dart';
import 'package:aya_mobile/model/MLTopHospitalData.dart';
import 'package:aya_mobile/model/MLWalkThroughData.dart';

import 'MLImage.dart';
import 'MLString.dart';

List<MLWalkThroughData> mlWalkThroughDataList() {
  List<MLWalkThroughData> list = [];
  list.add(MLWalkThroughData(
      imagePath: ml_ic_slide_one,
      title: mlSlide_one,
      subtitle: mlSlide_one_subtitle));
  list.add(MLWalkThroughData(
      imagePath: ml_ic_slide_three,
      title: mlSlide_three,
      subtitle: mlSlide_three_subtitle));
  list.add(MLWalkThroughData(
      imagePath: ml_ic_slide_two,
      title: mlSlide_two,
      subtitle: mlSlide_two_subtitle));
  // list.add(MLWalkThroughData(imagePath: ml_ic_slide_four, title: mlSlide_four, subtitle: mlSlide_four_subtitle));
  return list;
}

List<MLDepartmentData> mlDepartmentDataList() {
  List<MLDepartmentData> list = [];

  list.add(MLDepartmentData(image: ml_ic_department_two, title: 'Licence'));
  list.add(MLDepartmentData(image: ml_ic_department_three, title: 'F.A.Q'));
  list.add(MLDepartmentData(image: ml_ic_department_one, title: 'CDC Module'));
  list.add(
      MLDepartmentData(image: ml_ic_department_one, title: 'Knowledge Base'));

  return list;
}

List<MLPatientData> mlPatientDataList() {
  List<MLPatientData> list = [];
  list.add(MLPatientData(
      name: 'xcKaixa Pham', dob: '21-09-1995', relation: 'label'));
  list.add(MLPatientData(
      name: 'xxKaixa Pham', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Stephenwsd Chew', dob: '12-11-1990', relation: 'Brother'));
  // list.add(MLPatientData(
  //     name: 'Kaixasf  Phamff', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Kaixadd Phamdtgf', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Stephen2 Chewff', dob: '12-11-1990', relation: 'Brother'));
  // list.add(MLPatientData(
  //     name: 'Kaixaccg Phamff', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Kaixads Phamsd', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Stephen1 asChew', dob: '12-11-1990', relation: 'Brother'));
  // list.add(MLPatientData(
  //     name: 'Kaixa Phamrt', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Kaixa Pham57', dob: '21-09-1995', relation: 'label'));
  // list.add(MLPatientData(
  //     name: 'Stephen56 Chew', dob: '12-11-1990', relation: 'Brother'));
  return list;
}

List<MLTopHospitalData> mlTopHospitalDataList() {
  List<MLTopHospitalData> list = [];
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_one,
      title: 'General Doctor',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_two,
      title: 'Pediatrics',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_three,
      title: 'Cardiologic',
      subtitle: '647 Doctor',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_four,
      title: 'General Doctor',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_one,
      title: 'General Doctor',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_two,
      title: 'Pediatrics',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_three,
      title: 'Cardiologic',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_four,
      title: 'General Doctor',
      subtitle:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      rating: ''));
  return list;
}

List<MLTopHospitalData> mlHospitalListDataList() {
  List<MLTopHospitalData> list = [];
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_one,
      title: 'Kenyatta National Hospital',
      city: 'Nairobi, NRB',
      practitioner: '(Practitioners 230)',
      interns: '(Interns 20 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$350'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_two,
      title: 'Kisumu Hospital ',
      city: 'Kisumu, KSM',
      practitioner: '(Practitioners 130)',
      interns: '(Interns 67)',
      rating: '4.8 (456 Reviews)',
      fees: '\$750'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_three,
      title: 'Mandera- Hospital',
      city: 'Mandera ',
      practitioner: '(Practitioners 56 )',
      interns: '(Interns 42 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$350'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_four,
      title: 'Nandi Hospital ',
      city: 'Nandi Hill',
      practitioner: '(Practitioners 20 )',
      interns: '(Interns 7 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$750'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_one,
      title: 'Johns Hokins Hospital',
      city: 'Mombasa',
      practitioner: '(Practitioners 120 )',
      interns: '(Interns 98 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$350'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_two,
      title: 'The NorthSide Hospital ',
      city: 'Nyari',
      practitioner: '(Practitioners 30 )',
      interns: '(Interns 2 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$750'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_three,
      title: 'MHM Hospital',
      city: 'Nairobi',
      practitioner: '(Practitioners 56 )',
      interns: '(Interns 40 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$350'));
  list.add(MLTopHospitalData(
      image: ml_ic_hospital_four,
      title: 'The NorthEnd Hospital ',
      city: 'Central Hill',
      practitioner: '(Practitioners 23 )',
      interns: '(Interns 30 )',
      rating: '4.8 (456 Reviews)',
      fees: '\$750'));
  return list;
}

List<PractitionerData> practitionerListDataList() {
  List<PractitionerData> list = [];
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  list.add(PractitionerData(
      title: 'Dr. Edward Jenner',
      subtitle: 'Endocrinology',
      image: ml_ic_doctor_image,
      rating: '4.8',
      fees: '\$450'));
  return list;
}

List<String?> mlScheduleTimeList() {
  List<String?> list = [];
  list.add('8:00 AM - 9:00 AM');
  list.add('9:00 AM - 10:00 AM');
  list.add('10:00 AM - 11:00 AM');
  list.add('11:00 AM - 12:00 AM');
  list.add('1:00 AM - 2:00 AM');
  list.add('2:00 AM - 3:00 AM');
  list.add('3:00 AM - 4:00 AM');
  list.add('4:00 AM - 5:00 AM');
  return list;
}

List<KnowledgeBaseData> mlCategoryMedicineList() {
  List<KnowledgeBaseData> list = [];
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconSix, title: 'Prescription Drug'));
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconFive, title: 'Functional Food'));
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconThree, title: 'Personal Care'));
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconFour, title: 'Family Medicine'));
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconTwo, title: 'Prescription Drug'));
  list.add(
      KnowledgeBaseData(image: ml_ic_mediIconOne, title: 'Prescription Drug'));

  return list;
}

List<KnowledgeBaseData> mKnowledgebaseDataList() {
  List<KnowledgeBaseData> list = [];
  list.add(KnowledgeBaseData(
      image: ml_ic_mediTwo,
      title: 'Nursing Book 1',
      time: "1h : 20m",
      author: "Dr John Speck",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  list.add(KnowledgeBaseData(
      image: ml_ic_mediThree,
      title: 'General Health Care',
      time: "58Min",
      author: "Austin Demo",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  list.add(KnowledgeBaseData(
      image: ml_ic_mediFour,
      title: 'Prevention of Covid-19',
      time: "2h 20min",
      author: "Ministry of Health",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  list.add(KnowledgeBaseData(
      image: ml_ic_mediFive,
      title: 'Caring the Eldery',
      time: "46 Min",
      author: "Nursing Home",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  list.add(KnowledgeBaseData(
      image: ml_ic_mediTwo,
      title: 'Minerals Vitamin C',
      time: "24Min",
      author: "John Doe",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  list.add(KnowledgeBaseData(
      image: ml_ic_mediThree,
      title: 'Fundamenta of Organic',
      time: "4h 10 Min",
      author: "Tom W",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of"));
  return list;
}

List<CadreList> cadreDataList1() {
  List<CadreList> list = [];

  list.add(CadreList(
      regNo: '6574', cadre: 'KEM', cadreText: 'KENYA ENROLLED NURSE'));
  list.add(CadreList(
      regNo: '4947', cadre: 'KEM', cadreText: 'KENYA ENROLLED MIDWIFE'));
  list.add(CadreList(
      regNo: '1004',
      cadre: 'KECHN (PB)',
      cadreText: 'KENYA ENROLLED  COMMUNITY HEALTH NURSE [PB]'));

  return list;
}

List<EducationList> educationDataList1() {
  List<EducationList> list = [];
  list.add(EducationList(
      cadre: 'KEN',
      cadreText: 'KENYA ENROLLED NURSE',
      institution: 'KMTC NAKURU',
      admissionDate: '1978-04-03'));
  list.add(EducationList(
      cadre: 'KEM',
      cadreText: 'KENYA ENROLLED MIDWIFE',
      institution: 'PUMWANI SCHOOL OF MIDWIFERY',
      admissionDate: '1983-01-03'));
  list.add(EducationList(
      cadre: 'KECHN (PB)',
      cadreText: 'KENYA ENROLLED  COMMUNITY HEALTH NURSE [PB]',
      institution: 'KMTC KISUMU',
      admissionDate: '1985-10-01'));

  return list;
}

List<EducationData> educationDataList() {
  List<EducationData> list = [];
  list.add(EducationData(
      image: ml_ic_mediFive, title: 'Nursing Book 1', author: ''));
  list.add(EducationData(
      image: ml_ic_mediTwo, title: 'Care of the Eldery ', author: ''));
  list.add(EducationData(
      image: ml_ic_mediThree,
      title: 'Psycological Surport of Health care',
      author: ''));
  list.add(EducationData(
      image: ml_ic_mediFour, title: 'New born Proxis', author: ''));
  list.add(
      EducationData(image: ml_ic_mediFive, title: 'Midwifry 101', author: ''));
  list.add(EducationData(image: ml_ic_mediTwo, title: 'Anatomy', author: ''));
  list.add(EducationData(
      image: ml_ic_mediThree, title: 'Probitic book1', author: ''));
  list.add(EducationData(
      image: ml_ic_mediFour, title: 'Mathematics book 1', author: ''));
  return list;
}

List<KnowledgeBaseData> mlPillDataList() {
  List<KnowledgeBaseData> list = [];
  list.add(KnowledgeBaseData(image: ml_ic_mediFive, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediTwo, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediThree, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediFour, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediFive, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediTwo, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediThree, title: 'Probitic, 250mg'));
  list.add(KnowledgeBaseData(image: ml_ic_mediFour, title: 'Probitic, 250mg'));
  return list;
}
