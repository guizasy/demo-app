%dw 2.0
output application/json
---
{
	code: Mule::p('responses.error.415.code'),
	message: Mule::p('responses.error.415.message'),
	referenceInfo: Mule::p('api.reference.info')
}