# terraform_basic_01
# this terraform is created by masnawi rahmat
# in Generation SG/Temasek Poly SGUPMSCT Cloud Support and DevOps Bootcamp cohort no 4 Yr 2022
# this terraform is created with learning purpose more than optimisation in mind
# this terraform code creates an 'imaginary' company (company_x) and its departments as directory and subdirectories with randomnised department heads named in respective txt files
# objectives of this terraform code is to give you the basic understanding of how terraform works by using the local_file & random_pet resources to:
# (1) create directory and subdirectories in your local machine
# (2) create txt files (with randomly created 'content(s)') in the subdirectories
# please substitute 'your_user_name' with your own user name
# go ahead and change the the directory/subdirectries, file name and apply and re-apply the terraform code and see what happen

resource "random_pet" "ceo_head" {
  length = 1
}
resource "local_file" "ceo_head" {
  filename = "/home/you_user_name/company_x/ceo_office/head.txt"
  content  = "Mr. ${random_pet.ceo_head.id}"
}
resource "random_pet" "it_head" {
  length = 1
}
resource "local_file" "it_head" {
  filename = "/home/your_user_name/company_x/it_department/head.txt"
  content  = "Miss ${random_pet.it_head.id}"
}
resource "random_pet" "hr_head" {
  length = 1
}
resource "local_file" "hr_head" {
  filename = "/home/your_user_name/company_x/hr_department/head.txt"
  content  = "Dr. ${random_pet.hr_head.id}"
}
