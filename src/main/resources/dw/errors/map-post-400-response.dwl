%dw 2.0
output application/json
---
{
	code: Mule::p('responses.error.400.code'),
	message: Mule::p('responses.error.400.message'),
	referenceInfo: Mule::p('api.reference.info'),
	additionalInfo:[
		{
			message: error.description
		}
	]
}