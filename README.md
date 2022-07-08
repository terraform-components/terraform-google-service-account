<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_google"></a> [google](#provider\_google)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [google_project_iam_binding.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) (resource)
- [google_project_iam_custom_role.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) (resource)
- [google_service_account.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: n/a

Type: `string`

### <a name="input_project"></a> [project](#input\_project)

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_permissions"></a> [permissions](#input\_permissions)

Description: n/a

Type: `list(string)`

Default: `[]`

## Outputs

The following outputs are exported:

### <a name="output_email"></a> [email](#output\_email)

Description: n/a

### <a name="output_id"></a> [id](#output\_id)

Description: n/a
<!-- END_TF_DOCS -->