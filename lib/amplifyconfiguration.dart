const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:14160c7f-55f5-4189-845e-4d344b871a18",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_tAORbRych",
                        "AppClientId": "3ep3k6e96fmat6sb28rpagjk0t",
                        "AppClientSecret": "1kbpo3k2i2ju2pe0cqgeb30b8g9i88hqhd2avbc7tgrflj4un6pt",
                        "Region": "us-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "AppClientId": "3ep3k6e96fmat6sb28rpagjk0t",
                            "AppClientSecret": "1kbpo3k2i2ju2pe0cqgeb30b8g9i88hqhd2avbc7tgrflj4un6pt",
                            "SignInRedirectURI": "https://localhost/",
                            "SignOutRedirectURI": "https://localhost/",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "amjidtestbucket105446-dev",
                        "Region": "us-east-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "amjidtestbucket105446-dev",
                "region": "us-east-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';