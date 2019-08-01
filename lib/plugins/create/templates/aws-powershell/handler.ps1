#AWS PowerShell provides $LambdaInput and $LambdaContext variables automatically

$body = @{
    message = 'Go Serverless v1.0! Your function executed successfully!'
    input = $LambdaInput
}

#The last object output to stdout during the exeuction of the PowerShell script will be returned as the lambda response

@{
    statusCode = 200
    body = $body | ConvertTo-Json
}