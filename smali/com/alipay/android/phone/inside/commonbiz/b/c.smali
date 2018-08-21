.class public Lcom/alipay/android/phone/inside/commonbiz/b/c;
.super Ljava/lang/Object;
.source "StaticConfig.java"


# static fields
.field private static volatile a:Z

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/c;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "insideModel"

    const-string/jumbo v1, "HUAWEI"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->g()V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/c;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "productName"

    const-string/jumbo v1, "ALIPAY_INSIDE"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "productVersion"

    const-string/jumbo v1, "2.0.0.1000000"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "productID"

    const-string/jumbo v1, "ALIPAY_INSIDE_HUAWEI"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "huawei"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "innerVersion"

    const-string/jumbo v1, "1001"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized g()V
    .locals 7

    const-class v2, Lcom/alipay/android/phone/inside/commonbiz/b/c;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "channel.config"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/alipay/android/phone/inside/commonbiz/b/c;->b:Ljava/util/Map;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a:Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "StaticConfig"

    invoke-interface {v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
