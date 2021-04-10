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
                            "PoolId": "us-east-1:36df139f-6e47-45a3-8128-093fd6e6ff0e",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_TgHldCZSv",
                        "AppClientId": "erhl83sqfgkug30f15q8ngco3",
                        "AppClientSecret": "1nmjhep0stt2nqd0hjot79rr33ap5v7vl7b1a4eu8u144h1geup",
                        "Region": "us-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "flutterawsamplifye1d06eccd587401aa2b7c7209cd4f1165257-dev",
                        "Region": "us-east-1"
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "709eeb5864204e0eb710bb99ce65011b",
                        "Region": "us-east-1"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "us-east-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "flutterawsamplifye1d06eccd587401aa2b7c7209cd4f1165257-dev",
                "region": "us-east-1",
                "defaultAccessLevel": "guest"
            }
        }
    },
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "709eeb5864204e0eb710bb99ce65011b",
                    "region": "us-east-1"
                },
                "pinpointTargeting": {
                    "region": "us-east-1"
                }
            }
        }
    }
}''';