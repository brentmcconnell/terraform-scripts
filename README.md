# Terraform scripts for Azure

## Instructions

Install Terraform using the [instructions](https://learn.hashicorp.com/terraform/getting-started/install.html) for your platform.

Create a service principal in Azure by running the following command.

```ssh
az ad sp create-for-rbac --name terraform-sp
```

You can get your TenantID and SubscriptionID using this command:

```ssh
az account show --query "{subscriptionId:id, tenantId:tenantId}" --output table
```

On Mac/Linux set the following environment variables using the commands below with the information provided in the service principal.  Be sure to pick the correct ARM_ENVIRONMENT for the Azure cloud you are targeting.

```ssh
export ARM_SUBSCRIPTION_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
export ARM_CLIENT_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
export ARM_CLIENT_SECRET=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
export ARM_TENANT_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
export ARM_ENVIRONMENT=[usgovernment/public/german/china (chose one)]
```

Execute terraform plan and apply:

```ssh
terraform fmt
terraform validate
terraform plan
terraform apply
```

Clean resources

It will destroy everything that was created.

```ssh
terraform destroy --force
```

## Caution

Be aware that by running this script your account might get billed.
Also it is recommended to use a remote state instead of a local one.
