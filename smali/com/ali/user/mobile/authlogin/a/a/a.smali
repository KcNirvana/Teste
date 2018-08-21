.class public Lcom/ali/user/mobile/authlogin/a/a/a;
.super Ljava/lang/Object;
.source "AlipaySSOAuthLoginApiImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/authlogin/a/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "createSsoApi"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v1, "appKey"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/ali/user/mobile/authlogin/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fullClassName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "signData"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appKey"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000267"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/authlogin/b/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "begin syncHandleApdidtoken"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/ali/user/mobile/authlogin/a/c;->showPreProgress()V

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/ali/user/mobile/authlogin/a/a/b;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/authlogin/a/a/b;-><init>(Lcom/ali/user/mobile/authlogin/a/a/a;Lcom/ali/user/mobile/authlogin/a/c;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "openAlipayLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    invoke-static {v0, p3, p6}, Lcom/ali/user/mobile/authlogin/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v4, v0}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    invoke-static {v2, p3, p7, v1}, Lcom/ali/user/mobile/authlogin/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "AliAuth_AlipaySSOAuthLoginApiImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packagename="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " classname="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " apdidtoken="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " time="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " signdata="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " appkey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "wbkey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0x3ee

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/c;->preAuthFailed(I)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "after encode aesEncryptApdidToken="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "AliAuth_AlipaySSOAuthLoginApiImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p2}, Lcom/ali/user/mobile/authlogin/a/c;->openAlipaySuccess()V

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "AliAuthLoginSDK_start"

    const-string/jumbo v3, "ALIAUTH_0415_02"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v3, "openAlipayLogin error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x7d1

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/c;->preAuthFailed(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ali/user/mobile/authlogin/a/a/a;Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ali/user/mobile/authlogin/exception/ParamNullException;,
            Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ali/user/mobile/authlogin/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "alipay has not install"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;

    const-string/jumbo v1, "alipay has not install"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/authlogin/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "alipay authlogin api not support"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;

    const-string/jumbo v1, "alipay authlogin api not support"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/PreAuthLoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "a"

    const-string/jumbo v0, "authlogin_inside_android_aes128"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.ali.user.mobile.external.AuthLoginResultActivity"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "some key word is null or empty string"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;

    const-string/jumbo v1, "one or some must need param is null"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "event"

    const-string/jumbo v1, "AliAuthLoginSDK_begin"

    const-string/jumbo v2, "ALIAUTH_0415_12"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ali/user/mobile/info/AppInfo;->setAuthApdidToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "first init apdidtoken success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "authlogin_inside_android_aes128"

    const-string/jumbo v5, "com.ali.user.mobile.external.AuthLoginResultActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    const-string/jumbo v0, "event"

    const-string/jumbo v1, "AliAuthLoginSDK_initUuidFailure"

    const-string/jumbo v2, "ALIAUTH_0415_07"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "authlogin_inside_android_aes128"

    const-string/jumbo v5, "com.ali.user.mobile.external.AuthLoginResultActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lcom/ali/user/mobile/authlogin/a/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ali/user/mobile/authlogin/exception/ParamNullException;
        }
    .end annotation

    const/16 v0, 0x3ec

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "AliAuthLoginSDK_handleURL"

    const-string/jumbo v3, "ALIAUTH_0415_03"

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "intent \u4e3a  null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;

    const-string/jumbo v1, "intent can not be null"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v2, "eventHandler \u4e3a  null ,\u4e1a\u52a1\u65b9\u9700\u4f20\u9012\u4e00\u4e2a\u975e\u7a7a\u5b9e\u4f8b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;

    const-string/jumbo v1, "callabck IAlipaySSOEventHandler object can not be null"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/authlogin/exception/ParamNullException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "authStateKey"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v6, "event"

    const-string/jumbo v7, "AliAuthLoginSDK_authCode"

    const-string/jumbo v8, "ALIAUTH_0415_04"

    invoke-static {v6, v7, v8, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v6, "\u5f00\u59cb\u767b\u5f55"

    invoke-interface {v0, v1, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/ali/user/mobile/authlogin/a/b;->startLogin(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "AliAuth_AlipaySSOAuthLoginApiImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6388\u6743\u8fd4\u56de\u7ed3\u679ccode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " msg="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/16 v6, 0xbb9

    if-ne v1, v6, :cond_3

    const/16 v0, 0x3e9

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/b;->onAuthFailed(I)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v6, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v7, "\u7528\u6237\u53d6\u6d88\u8fd4\u56de\u7801 -2"

    invoke-interface {v1, v6, v7}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v1, "event"

    const-string/jumbo v6, "AliAuthLoginSDK_action"

    const-string/jumbo v7, "ALIAUTH_0415_05"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v7, v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v6, 0xbba

    if-ne v1, v6, :cond_4

    const/16 v0, 0x3ea

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/b;->onAuthFailed(I)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v6, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v7, "\u7528\u6237\u66f4\u6362\u8d26\u6237 -3"

    invoke-interface {v1, v6, v7}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/b;->onAuthFailed(I)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v6, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v7, "\u6388\u6743\u5931\u8d25\u5176\u4ed6 -1"

    invoke-interface {v1, v6, v7}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v3, "\u6388\u6743\u8fd4\u56de intent.getExtras() is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ali/user/mobile/authlogin/a/b;->onAuthFailed(I)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "authStateKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/authlogin/b/a;

    iget-object v3, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/authlogin/b/a;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/authlogin/b/a;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const v3, 0x3994a258

    if-lt v2, v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v3, "AliAuth_AlipaySSOAuthLoginApiImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auth login supportVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/ali/user/mobile/authlogin/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0x5d

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "AliAuth_AlipaySSOAuthLoginApiImpl"

    const-string/jumbo v4, "isAlipayAppSurpportAPI error"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
