locals {
  ## Exoscale

  # Templates
  template = {
    "Linux Ubuntu 20.04 LTS 64-bit" = {
      distribution = "ubuntu"
      codename     = "focal"
    }
    "Linux Ubuntu 22.04 LTS 64-bit" = {
      distribution = "ubuntu"
      codename     = "jammy"
    }
  }

  # Private network
  privnet_netmask  = "255.255.255.0"
  privnet_start_ip = "172.16.0.100"
  privnet_end_ip   = "172.16.0.253"


  ## System setup

  # Configuration
  system_config_path = abspath("../../../resources/system")


  ## Kubernetes parameters

  # Manifests
  k8s_manifests_path = abspath("../../../resources/manifests")

  # DNS
  k8s_dns_domain  = "cluster.local"
  k8s_dns_address = "10.96.0.10"

  # Networks
  k8s_service_subnet = "10.96.0.0/12"
  k8s_pod_subnet     = "192.168.0.0/16"
}
