.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/b;
.super Ljava/lang/Object;
.source "ApplistUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;,
        Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private static b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b:Ljava/lang/ref/SoftReference;

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    return-void
.end method

.method static synthetic a()Lcom/alipay/android/phone/inside/log/api/c/a;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Z)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAllAppName(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "ApplistUtil"

    const-string/jumbo v2, "scanApps installedAppList is null."

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, "ApplistUtil"

    const-string/jumbo v2, "scanApps load config error."

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    :cond_2
    const-string/jumbo v2, "ApplistUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanApps version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v4, v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->b:Ljava/util/List;

    iget-object v3, v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_5

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_8

    :cond_5
    const-string/jumbo v2, "ApplistUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scanApps originalAppList size = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_6

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", extraAppList = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_7

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, v1, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {v2, v3, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    div-int/lit8 v2, v1, 0x8

    aget-byte v2, v3, v2

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    rem-int/lit8 v5, v1, 0x8

    shr-int/2addr v0, v5

    or-int/2addr v0, v2

    :goto_1
    div-int/lit8 v2, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    invoke-direct {v0, p2, v3}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;-><init>(Ljava/lang/String;[B)V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "apps"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "vkeyid_settings2"

    const-string/jumbo v3, "loc_app_lists"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->writeToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)[B
    .locals 10

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Landroid/content/Context;Z)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    array-length v7, v5

    const/4 v8, 0x3

    if-gt v7, v8, :cond_0

    array-length v0, v6

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([BB)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    array-length v8, v6

    invoke-static {v6, v5, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v5, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v6, "ApplistUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTotalAppListBitmap cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms. result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    invoke-static {v4}, Lcom/alipay/security/mobile/module/crypto/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;
    .locals 10

    const-wide/16 v8, 0x1

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-wide v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    const-wide/16 v6, 0x14

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-wide v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->d:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1499700

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a(Landroid/content/Context;Z)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    array-length v4, v4

    if-lez v4, :cond_1

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    invoke-direct {v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;-><init>()V

    sput-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    invoke-static {v4}, Lcom/alipay/security/mobile/module/crypto/Hex;->encode([B)[B

    move-result-object v4

    sget-object v5, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iput-wide v2, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->d:J

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v4, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v4, "ApplistUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getExtraAppListBitmap cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms. result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v3, v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-wide v2, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    :cond_2
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "ApplistUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExtraAppListBitmap used last result , useCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-wide v4, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    add-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->c:Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;

    iget-object v4, v4, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "ApplistUtil"

    const-string/jumbo v1, "getExAppListDetails load config error."

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_3

    :cond_1
    const-string/jumbo v1, "ApplistUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExAppListDetails version = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->b:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_6

    :cond_4
    const-string/jumbo v1, "ApplistUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExAppListDetails targetAppList size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v5, :cond_5

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, p0, v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAllAppName(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const-string/jumbo v0, "ApplistUtil"

    const-string/jumbo v1, "getExAppListDetails installedAppList is null."

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/commonbiz/monitor/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_9
    :try_start_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    const/16 v0, 0x32

    if-ge v1, v0, :cond_a

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_b

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;
    .locals 3

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->e(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->e(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized e(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;
    .locals 6

    const-class v1, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings2"

    const-string/jumbo v2, "loc_app_lists"

    invoke-static {p0, v0, v2}, Lcom/alipay/security/mobile/module/localstorage/SecurityStorageUtils;->readFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ver"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "apps"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/alipay/apmobilesecuritysdk/commonbiz/b;->a:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "ApplistUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readExtraAppLists parse extra list error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$a;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
