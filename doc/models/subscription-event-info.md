
# Subscription Event Info

Provides information about the subscription event.

## Structure

`Subscription Event Info`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `detail` | `String` | Optional | A human-readable explanation for the event. |
| `code` | [`String (Subscription Event Info Code)`](../../doc/models/subscription-event-info-code.md) | Optional | Supported info codes of a subscription event. |

## Example (as JSON)

```json
{
  "detail": "detail6",
  "code": "CUSTOMER_DELETED"
}
```

