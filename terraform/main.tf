module "network" {
    source = "./network"
    cidr = var.cidr
    public_subnet_cidr_1 = var.public_subnet_cidr_1
    public_subnet_cidr_2 = var.public_subnet_cidr_2
    private_subnet_cidr_1 = var.private_subnet_cidr_1
    private_subnet_cidr_2 = var.private_subnet_cidr_2
}
module "compute" {
    source = "./compute"
  
}