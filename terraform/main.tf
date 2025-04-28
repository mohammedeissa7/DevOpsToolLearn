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
    myvpcip = module.network.myvpc
    network_public_subnet_id_1 = module.network.public_subnet_id_1
    network_private_subnet_id_1 = module.network.private_subnet_id_1
    network_public_subnet_id_2 = module.network.public_subnet_id_2
    network_private_subnet_id_2 = module.network.private_subnet_id_2
  
}