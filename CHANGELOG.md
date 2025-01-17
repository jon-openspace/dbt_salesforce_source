# dbt_salesforce_source v0.6.0
## 🚨 Breaking Changes 🚨:
[PR #34](https://github.com/fivetran/dbt_salesforce_source/pull/34) includes the following breaking changes:
- Dispatch update for dbt-utils to dbt-core cross-db macros migration. Specifically `{{ dbt_utils.<macro> }}` have been updated to `{{ dbt.<macro> }}` for the below macros:
    - `any_value`
    - `bool_or`
    - `cast_bool_to_text`
    - `concat`
    - `date_trunc`
    - `dateadd`
    - `datediff`
    - `escape_single_quotes`
    - `except`
    - `hash`
    - `intersect`
    - `last_day`
    - `length`
    - `listagg`
    - `position`
    - `replace`
    - `right`
    - `safe_cast`
    - `split_part`
    - `string_literal`
    - `type_bigint`
    - `type_float`
    - `type_int`
    - `type_numeric`
    - `type_string`
    - `type_timestamp`
    - `array_append`
    - `array_concat`
    - `array_construct`
- For `current_timestamp` and `current_timestamp_in_utc` macros, the dispatch AND the macro names have been updated to the below, respectively:
    - `dbt.current_timestamp_backcompat`
    - `dbt.current_timestamp_in_utc_backcompat`
- Dependencies on `fivetran/fivetran_utils` have been upgraded, previously `[">=0.3.0", "<0.4.0"]` now `[">=0.4.0", "<0.5.0"]`.

## Features
- Addition of the `fivetran_formula_model` table within the src_salesforce.yml file. This source may be leveraged when using the `dbt_salesforce_formula_utils` package.
# dbt_salesforce_source v0.5.1
## Bug fixes
PR [#33](https://github.com/fivetran/dbt_salesforce_source/pull/33) incorporates the following updates:
  - Updated `src_salesforce.yml` to accomdate Snowflake users that make have issues with the `orders` source. See updated [README](https://github.com/fivetran/dbt_salesforce_source/tree/main#-snowflake-users) for details.
  - Updated typo in config for `stg_salesforce__task_tmp.sql`.
# dbt_salesforce_source v0.5.0
🎉 Salesforce Package Updates 🎉

We are updating the Salesforce package! To improve its utility, the changes include the following:
## Features
  - Bringing additional tables to create a new Contact Enhanced and Sales Velocity model as well as updating the Opportunity Enhanced model. ([#30](https://github.com/fivetran/dbt_salesforce_source/pull/30))
  - Allowing formula fields to be added as passthrough columns. We added integration with the Salesforce Formula package by embedding the macro outputs as part of our staging models so that your custom formula fields can be included. ([#30](https://github.com/fivetran/dbt_salesforce_source/pull/30))
  - Standardization updates ([#25](https://github.com/fivetran/dbt_salesforce_source/pull/25)):
      - Updated formatting in our `sql` files.
      - The README has been updated to reflect our rehaul of our documentation style to make it more straightforward. 
      - Added `identifier` variable to each source to allow for more end-user customization on which table to pull from.

# dbt_salesforce_source v0.4.2
## Fixes
- Casts the `created_date` and `closed_date` fields within the `stg_salesforce__opportunity` model to a timestamp using the `dbt_utils.type_timestamp()` macro. This is needed for Redshift users that see these fields being synced as `timestamptz` as the downstream date functions do not work with the timestamptz datatype.
# dbt_salesforce_source v0.4.1
## Features
- Support for Databricks compatibility! ([#20](https://github.com/fivetran/dbt_salesforce_source/pull/20))
- Add feature for disabling the user_role table. ([#22](https://github.com/fivetran/dbt_salesforce_source/pull/22))

## Contributors
- [drernie](https://github.com/drernie) ([#20](https://github.com/fivetran/dbt_salesforce_source/pull/20))

# dbt_salesforce_source v0.4.0
🎉 dbt v1.0.0 Compatibility 🎉
## 🚨 Breaking Changes 🚨
- Adjusts the `require-dbt-version` to now be within the range [">=1.0.0", "<2.0.0"]. Additionally, the package has been updated for dbt v1.0.0 compatibility. If you are using a dbt version <1.0.0, you will need to upgrade in order to leverage the latest version of the package.
  - For help upgrading your package, I recommend reviewing this GitHub repo's Release Notes on what changes have been implemented since your last upgrade.
  - For help upgrading your dbt project to dbt v1.0.0, I recommend reviewing dbt-labs [upgrading to 1.0.0 docs](https://docs.getdbt.com/docs/guides/migration-guide/upgrading-to-1-0-0) for more details on what changes must be made.
- Upgrades the package dependency to refer to the latest `dbt_fivetran_utils`. The latest `dbt_fivetran_utils` package also has a dependency on `dbt_utils` [">=0.8.0", "<0.9.0"].
  - Please note, if you are installing a version of `dbt_utils` in your `packages.yml` that is not in the range above then you will encounter a package dependency error.

# dbt_salesforce_source v0.1.0 -> v0.3.1
Refer to the relevant release notes on the Github repository for specific details for the previous releases. Thank you!
