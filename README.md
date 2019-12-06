# Terraform Module Name: terraform-module-aws-iam-instance-profile


## General

This module may be used to create **_IAM Instance Profile_** resources in AWS cloud provider..



---


## Prerequisites

This module needs Terraform 0.11.14 or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.

---

## Features Branches

Below we are able to check the resources that are being created as part of this module call:

From branch : **_terraform-11/master_**

* **_IAM Instance Profile (Terraform 11 supported code)_**


---

## Below are the resources that are launched by this module

* **_IAM Instance Profile_**


---

## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "<layer>-iam-instance-profile-<AccountID>" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-instance-profile.git?ref=terraform-11/master"


}
```


---

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


|         **_Variable_**          |           **_Description_**             |   **_Type_**   |
|---------------------------------|-----------------------------------------|----------------|
| name                            | The profile's name                      | string         |
| role                            | Path in which to create the profile     | string         |
| path                            | The role name to include in the profile | string         |




## Outputs

* **_id_**
* **_arn_**
* **_name_**



### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "s3-webstack-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```

- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - **_Nitin Das_**