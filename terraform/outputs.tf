output "vpcid" {
  value = module.network.myvpc.id
}
output "bastion_ip" {
  value = module.compute.bastion_ip
}