# Inverse of G-Wishart sample Schema

```txt
http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish
```

Parameter setting for a G-Wishart model. Works for undirected graphs.

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                       |
| :------------------ | :--------- | :------------- | :----------- | :---------------- | :-------------------- | :------------------ | :--------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Forbidden             | none                | [config.schema.json*](config.schema.json "open original schema") |

## bdgraph_rgwish Type

`object` ([Inverse of G-Wishart sample](config-definitions-inverse-of-g-wishart-sample.md))

# bdgraph_rgwish Properties

| Property                | Type     | Required | Nullable       | Defined by                                                                                                                                                                                                                            |
| :---------------------- | :------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [id](#id)               | `string` | Required | cannot be null | [JSON schema for BenchPress config file.](config-definitions-inverse-of-g-wishart-sample-properties-id.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/id") |
| [b](#b)                 | Merged   | Required | cannot be null | [JSON schema for BenchPress config file.](config-definitions-flexnonnegnum.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/b")                              |
| [threshold](#threshold) | Merged   | Required | cannot be null | [JSON schema for BenchPress config file.](config-definitions-flexnonnegnum.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/threshold")                      |

## id



`id`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [JSON schema for BenchPress config file.](config-definitions-inverse-of-g-wishart-sample-properties-id.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/id")

### id Type

`string`

## b

Non-negative number(s).

`b`

*   is required

*   Type: merged type ([Details](config-definitions-flexnonnegnum.md))

*   cannot be null

*   defined in: [JSON schema for BenchPress config file.](config-definitions-flexnonnegnum.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/b")

### b Type

merged type ([Details](config-definitions-flexnonnegnum.md))

any of

*   [Non-negative number](config-definitions-flexnonnegnum-anyof-non-negative-number.md "check type definition")

*   [Non-negative number list](config-definitions-flexnonnegnum-anyof-non-negative-number-list.md "check type definition")

## threshold

Non-negative number(s).

`threshold`

*   is required

*   Type: merged type ([Details](config-definitions-flexnonnegnum.md))

*   cannot be null

*   defined in: [JSON schema for BenchPress config file.](config-definitions-flexnonnegnum.md "http://github.com/felixleopoldo/benchpress/workflow/schemas/config.schema.json#/definitions/bdgraph_rgwish/properties/threshold")

### threshold Type

merged type ([Details](config-definitions-flexnonnegnum.md))

any of

*   [Non-negative number](config-definitions-flexnonnegnum-anyof-non-negative-number.md "check type definition")

*   [Non-negative number list](config-definitions-flexnonnegnum-anyof-non-negative-number-list.md "check type definition")
