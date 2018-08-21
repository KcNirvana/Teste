.class public Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;
.super Lcom/miui/personalassistant/request/core/HttpBizRequest;
.source "AlipayGetAuthTokenRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayGetAuthTokenRequest"


# instance fields
.field private authCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/request/core/HttpBizRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->authCode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->setSignUrlAndParams(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "app_id"

    const-string/jumbo v1, "2017050507133157"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "method"

    const-string/jumbo v1, "alipay.system.oauth.token"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "charset"

    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sign_type"

    const-string/jumbo v1, "RSA2"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/TimeUtil;->getFormatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    const-string/jumbo v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "grant_type"

    const-string/jumbo v1, "authorization_code"

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0, p2}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sign"

    iget-object v1, p0, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->mParamMap:Ljava/util/HashMap;

    const-string/jumbo v2, "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCRVY+RhKfqQp66uBGQokqHvZq2aip/7FOIJYzuafSlbcODM2YzixY3o57QYHU71tiWrrrUgDmg7X5mEm5uR5p7FkiG/ip6CJYMYo91pARVfIDvqSaZLyBfblgkxcVKXT+5FU2lgAIUhjmPksi0v8uM27I9eB+HkSm4sfrjfntRfKN0BTQHbTnhpRdxd28hBGi0o91DWV4au94h7jK1i+ydxwxUE7SQjFbp3Q7XvI5q4nwvMJZQCaqtHDurnh+y3qNvV81vd1ufWkGK1+jUcuvwhyDNlV2hpmaEQgDiqgV9NFAMXqugkb7qVBoWI/0Q+D1DEZtiFz6Mp9xfLVwajB0NAgMBAAECggEAf4Uzk9tx+nq6C9u2jdHY04HqXmSJJfWW1b8dCZSutPi6tERFSLShqfBHSU9ZjkfVg2GNTSe1aR756VYCz4DEa3wB53DclHc0MWnJts9Tfi7gc2lYFNDk9tc7QAjIM5feceffWXgYWynrF68TrIUddVrP6l+cSrd0hDqmiTZRvgzoYrCuIjQvnT774l2zBXYD9lYPsWQtxVEaaE1Eervumhfx8ZAbD7coCrrbnYSC523hWtZZAELqLwp7/z1V9T7nWLCs04Kdg2K/NjIaHxyj1y/FDa3hTz/h59cwqZup3duBghHeEPONIVS88m5dlDt+NxCr1OzeoKXH6S5hTSDBgQKBgQDg3R9oFXQPVd+jwxt4XD45imQrM3E8M0Smxn2ZEZzNwuGPkIUqJzqzQhDMegjLBbjfw8E9DIwTWvUyL6rrmn6NpXUYqXKrOiEKcsSyjRt+u1QE945aOE3WahJitUXutK+dB/HTSzhNuJznPa6mKuTkPI2/Js6ZuJ25MyLMXcrhHwKBgQCldU7bY6VSEnkfxC8i6sVJm4flUH63TVRQmhaCPcnloXS/iP8riLisnzzGLNaFg7d2M6CxoWPCZ//PvqabuR6Rn5xOeAYuKRq3n8MTuhAKiZdGTOWcbQtqdWQTj32lIRq2Tf2VXWQimyCgXXcewhBqm5qkE9rc5a9aPMCUB/bgUwKBgG/1yWhynhnwoOyR/cB89UKDJILaFzxpLnp3hBvNyCwvJ03rIFKvu6t7bo/RB0XG8JkBh9qUv733YPR/BXRPtUljo50G6aBVzhO8tzFLzu/X5+qdNBS5yg/DOqpJJavH7VSbmw2ge0U/cWg1rxrvao41lEIj2WRypp2K1324CYbzAoGAN862d2dHxsP2WNGaOIPJYYd1MdKRuw/5JWqjtvBSXgK0VzpFHxDxgUAAhrNu8/+2bMcDJ4bRGCxt60tZ9OJevi2A0jLHmuBAY7keWlQCvxsjjBG5zKY3GIRZ6gMXFRByaxUpOC0U7ls2iQCdgiFg2iR752XPB3ztRVmCdyusiIMCgYBG900q45hDBRcv9sBjlHXHcFiF2/WGA6B6SZxZP9vSA24LSspgdIGtjAnb/TAj8wJ6qlfkrowgId11mQNxVDzmFcJi29zijH826yVe+0H1gtgZv8YRlFgXrbAFmbLMadULmM6+iFSLger4KFuqqXp2E0hy7qOxkjHgIbuOtIbPJg=="

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/miui/personalassistant/util/AlipayOrderInfoUtil2_0;->getSign(Ljava/util/Map;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/request/AlipayGetAuthTokenRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://openapi.alipay.com/gateway.do"

    return-object v0
.end method
