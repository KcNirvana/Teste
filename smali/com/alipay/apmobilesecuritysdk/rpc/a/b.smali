.class public Lcom/alipay/apmobilesecuritysdk/rpc/a/b;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-void
.end method

.method public static a(Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;-><init>()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->a:Z

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->extResultData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->l:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->f:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->h:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->resultData:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->apdid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->apdidToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->createTime:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->e:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->appListCmdVer:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->dynamicKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->i:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->webrtcUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->j:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->timeInterval:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->k:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ResultData;->drmSwitch:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->f:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->h:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/c;->m:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;

    invoke-direct {v3}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->f()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;

    invoke-direct {v6}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;->apdid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;->apdidToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;->umidToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;->lastTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;->dynamicKey:Ljava/lang/String;

    new-instance v7, Lcom/alipay/apmobilesecuritysdk/rpc/gen/DeviceData;

    invoke-direct {v7}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/DeviceData;-><init>()V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data map as follows("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ") :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/apmobilesecuritysdk/f/a;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->c()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Integer;

    if-ne v10, v11, :cond_3

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v4, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->c()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Boolean;

    if-ne v10, v11, :cond_4

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->c()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lokio/ByteString;

    if-ne v10, v11, :cond_5

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    array-length v10, v0

    invoke-static {v0, v1, v10}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->c()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Long;

    if-ne v10, v11, :cond_6

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->c()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/String;

    if-ne v10, v11, :cond_7

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    sget-object v10, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v11, "APSecuritySdk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "error, key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, " , request type is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ,but"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " real type is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iput-object v6, v3, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;->bizData:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BizData;

    iput-object v7, v3, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;->deviceData:Lcom/alipay/apmobilesecuritysdk/rpc/gen/DeviceData;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;->extDeviceData:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extDeviceData "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;->extDeviceData:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "AD43"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    const-string/jumbo v1, "AD43"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    const-string/jumbo v0, "AD48"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    const-string/jumbo v1, "AD48"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    const-string/jumbo v0, "AD49"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    const-string/jumbo v1, "AD49"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    const-string/jumbo v0, "AD100"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "AD100"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_4
    :try_start_4
    const-string/jumbo v0, "AD101"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "AD101"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_5
    :try_start_5
    const-string/jumbo v0, "AD50"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/f/a;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "AD50"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1
.end method
