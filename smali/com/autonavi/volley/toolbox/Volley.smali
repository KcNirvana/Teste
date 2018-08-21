.class public Lcom/autonavi/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"

.field private static proxyHost:Ljava/lang/String;

.field private static proxyPort:I

.field private static requestTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/volley/toolbox/Volley;->proxyHost:Ljava/lang/String;

    sput v1, Lcom/autonavi/volley/toolbox/Volley;->proxyPort:I

    sput v1, Lcom/autonavi/volley/toolbox/Volley;->requestTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/volley/toolbox/Volley;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyPort()I
    .locals 1

    sget v0, Lcom/autonavi/volley/toolbox/Volley;->proxyPort:I

    return v0
.end method

.method public static getRequestTimeout()I
    .locals 1

    sget v0, Lcom/autonavi/volley/toolbox/Volley;->requestTimeout:I

    return v0
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/autonavi/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/autonavi/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/autonavi/volley/toolbox/HttpStack;)Lcom/autonavi/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/autonavi/volley/toolbox/HttpStack;)Lcom/autonavi/volley/RequestQueue;
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "volley/0"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-nez p1, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    new-instance p1, Lcom/autonavi/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/autonavi/volley/toolbox/HurlStack;-><init>()V

    :cond_0
    :goto_1
    new-instance v2, Lcom/autonavi/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/autonavi/volley/toolbox/BasicNetwork;-><init>(Lcom/autonavi/volley/toolbox/HttpStack;)V

    new-instance v4, Lcom/autonavi/volley/RequestQueue;

    new-instance v6, Lcom/autonavi/volley/toolbox/DiskBasedCache;

    invoke-direct {v6, v0}, Lcom/autonavi/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/autonavi/volley/RequestQueue;-><init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;)V

    invoke-virtual {v4}, Lcom/autonavi/volley/RequestQueue;->start()V

    return-object v4

    :cond_1
    new-instance p1, Lcom/autonavi/volley/toolbox/HttpClientStack;

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/autonavi/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static setProxyHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/autonavi/volley/toolbox/Volley;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public static setProxyPort(I)V
    .locals 0

    sput p0, Lcom/autonavi/volley/toolbox/Volley;->proxyPort:I

    return-void
.end method

.method public static setRequestTimeout(I)V
    .locals 0

    sput p0, Lcom/autonavi/volley/toolbox/Volley;->requestTimeout:I

    return-void
.end method
