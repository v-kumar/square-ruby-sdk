
# Calculate Loyalty Points Response

A response that includes the points that the buyer can earn from
a specified purchase.

## Structure

`Calculate Loyalty Points Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |
| `points` | `Integer` | Optional | The points that the buyer can earn from a specified purchase. |

## Example (as JSON)

```json
{
  "points": 6
}
```

