%dw 2.0
output application/json
---
{
	code: Mule::p('responses.error.405.code'),
	message: Mule::p('responses.error.405.message'),
	referenceInfo: Mule::p('api.reference.info')
}