%dw 2.0
output application/json
---
{
	code: "SUCCESS",
	message: "Operation Successful",
	records: payload map (value, index) -> {
		customer: value.customerName,
		cost: (value.itemCost * value.itemCount) as String {format: "0.00"},
		count: value.itemCount,
		date: value.placementDate,
		item: value.itemName,
		orderNumber: value.orderId
	}
}