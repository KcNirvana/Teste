.class public Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;
.super Lcom/alipay/rdssecuritysdk/RDSModelServiceV3;
.source "RDSModelServiceV3Impl.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "RDS"


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

.field private userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/RDSModelServiceV3;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRdsRequestMessage(Landroid/content/Context;Lcom/alipay/mobile/security/senative/APSE;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    invoke-virtual {v1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b()Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "4"

    invoke-virtual {p2, p1, v3}, Lcom/alipay/mobile/security/senative/APSE;->zipEncryptAndSignRdsWithWua(Ljava/lang/Object;Ljava/lang/Object;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo v2, "3"

    invoke-virtual {p2, p1, v3}, Lcom/alipay/mobile/security/senative/APSE;->encryptAndSignRdsWithWua(Ljava/lang/Object;Ljava/lang/Object;)[B

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v4, "APSecuritySdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RDSModelServiceV3Impl getRdsRequestMessage, version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " encrypt data length = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RDSModelServiceV3Impl getRdsRequestMessage unexpected error happened, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageEnd()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-virtual {v1}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->b()Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a(Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a()Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    :cond_0
    return-void
.end method

.method public onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Ljava/lang/String;Ljava/lang/String;DD)V

    :cond_0
    return-void
.end method

.method public reInit(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a()Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->userBehaviourBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->context:Landroid/content/Context;

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string/jumbo v0, "umidToken"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->getLocalUmidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string/jumbo v0, "utdid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string/jumbo v0, "tid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v0, "appver"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_3
    const-string/jumbo v0, "appPackageName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_4
    const-string/jumbo v0, "appname"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    move-object v11, v0

    :goto_5
    const-string/jumbo v0, "user"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v0, "appkey"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a()Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-object v1, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->c(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->b(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    move-object v5, v8

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->d(Landroid/content/Context;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    return-void

    :catch_0
    move-exception v1

    move-object v2, v0

    goto/16 :goto_0

    :cond_1
    move-object v11, v0

    goto :goto_5

    :cond_2
    move-object v10, v0

    goto :goto_4

    :cond_3
    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object v4, v0

    goto/16 :goto_2

    :cond_5
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public updateUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;->rdsDataBuilder:Lcom/alipay/rdssecuritysdk/v3/impl/a;

    invoke-virtual {v0, p1}, Lcom/alipay/rdssecuritysdk/v3/impl/a;->a(Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/a;

    :cond_0
    return-void
.end method
