.class public Lcom/ali/user/mobile/account/a;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# direct methods
.method private static a(Lcom/alipay/android/phone/inside/commonbiz/b/a/b;)Lcom/ali/user/mobile/account/bean/CellIdInfo;
    .locals 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    new-instance v1, Lcom/ali/user/mobile/account/bean/CellIdInfo;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/bean/CellIdInfo;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "CdmaCellLocation is null!!!"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setCid(I)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setMcc(I)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setMnc(I)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setLac(I)V

    const-string/jumbo v2, "cdma"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setType(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AuthUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/ali/user/mobile/account/bean/CellIdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/c;",
            ">;)",
            "Lcom/ali/user/mobile/account/bean/CellIdInfo;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/account/bean/CellIdInfo;

    invoke-direct {v2}, Lcom/ali/user/mobile/account/bean/CellIdInfo;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AuthUtil"

    const-string/jumbo v2, "GsmCellLocation is null!!!"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setCid(I)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setMcc(I)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    :goto_3
    invoke-virtual {v2, v4}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setMnc(I)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    :goto_4
    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setLac(I)V

    const-string/jumbo v0, "gsm"

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->setType(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/ali/user/mobile/account/a;->b(Landroid/content/Context;)Lcom/ali/user/mobile/account/bean/CellIdInfo;

    move-result-object v0

    const-string/jumbo v1, "AuthUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cellIdInfoToJsonString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/ali/user/mobile/account/a;->a(Lcom/ali/user/mobile/account/bean/CellIdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/account/a;->a(Lcom/ali/user/mobile/account/bean/CellIdInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Lcom/ali/user/mobile/account/bean/CellIdInfo;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "mcc"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->getMcc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "mnc"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->getMnc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "lac"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->getLac()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "cid"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "cellIdInfoToJsonString error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-StackTrace:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    const-string/jumbo v5, " ### "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "com.alipay.android.phone.wallet.accountauth"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UserAutoLogin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p2, :cond_1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v0, "AuthUtil"

    const-string/jumbo v1, "setCurrentAutoLoginState = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "setCurrentAutoLoginState"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ali/user/mobile/account/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ali/user/mobile/account/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/ali/user/mobile/account/bean/CellIdInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d()Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    move-result-object v2

    new-instance v0, Lcom/ali/user/mobile/account/bean/CellIdInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/CellIdInfo;-><init>()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/ali/user/mobile/account/a;->a(Ljava/util/List;)Lcom/ali/user/mobile/account/bean/CellIdInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/ali/user/mobile/account/a;->a(Lcom/alipay/android/phone/inside/commonbiz/b/a/b;)Lcom/ali/user/mobile/account/bean/CellIdInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ali/user/mobile/e/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
