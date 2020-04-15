# _Terraform Module: terraform-module-aws-iam-instance-profile_

_Terraform module Provides an_ **_IAM Instance Profile_** _resource in AWS cloud provider...._


## _General_

_This module may be used to create_ **_IAM Instance Profile_** _resources in AWS cloud provider....._


---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.18_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._

---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_

* **_IAM Instance Profile_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "iam_instance_profile" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-instance-profile.git?ref=master"

  providers = {
    aws = aws.services
  }

  ## IAM Role
  name = "iam-instance-profile-ec2"
  path = "/service-role/"
  role = var.iam_role_name
}
```

```tf
module "iam_instance_profile" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-instance-profile.git?ref=master"

  providers = {
    aws = aws.services
  }

  ## IAM Role
  name = "iam-instance-profile-ec2"
}
```

```tf
module "iam_instance_profile" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-instance-profile.git?ref=master"

  providers = {
    aws = aws.services
  }

  ## IAM Role
  name = "iam-instance-profile-ec2"
  role = var.iam_role_name
}
```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_name_** | _The profile's name_ | _string_ | **_Optional_** | **_null_** | 
| **_name\_prefix_** | _Creates a unique name beginning <br/>with the specified prefix_ | _string_ | **_Optional_** | **_null_** | 
| **_path_** | _Path in which to create the profile_ | _string_ | **_Optional_** | **_/_** | 
| **_role_** | _The role name to include in the profile_ | _string_ | **_Optional_** | **_null_** |


----

### _General_

_This module has the following outputs:_

## _Outputs_

* **_id_**
* **_arn_**
* **_name_**
* **_role_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---

## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
