%dw 2.0
output application/json
---
{
  appName: Mule::p('app.name'),
  description :"starting of reprocess qbotica-po-sapi-config",
  functionalIdentifier: Mule::p('functionalIdentifier'),
  correlationId: attributes.headers.X-CORRELATION-ID,
  businessIdentifier1: "message id ",
  businessIdentifier1Value: attributes.'sqs.message.id'
}