.class public Lcom/miui/video/base/common/net/config/GlobalNetConfig;
.super Ljava/lang/Object;
.source "GlobalNetConfig.java"

# interfaces
.implements Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;
    }
.end annotation


# static fields
.field private static final API:Ljava/lang/String; = "/api2/"

.field private static final DATA_KEY_SERVER_URL:Ljava/lang/String; = "test_server_url"

.field private static final ENABLE_LOG:Z = true

.field private static SERVER:Ljava/lang/String; = "https://id.video.intl.xiaomi.com/api2/"

.field private static final SERVER_EU:Ljava/lang/String; = "https://video.eu.intl.xiaomi.com"

.field private static final SERVER_GLOBAL:Ljava/lang/String; = "https://id.video.intl.xiaomi.com"

.field private static final SERVER_INDIA:Ljava/lang/String; = "https://video.in.intl.xiaomi.com"

.field private static final SERVER_INDONESIA:Ljava/lang/String; = "https://id.video.intl.xiaomi.com"

.field private static final SERVER_RU:Ljava/lang/String; = "https://video.ru.intl.xiaomi.com"

.field private static final TIMEOUT_MILIS_CONNECT:J = 0x2710L

.field private static final TIMEOUT_MILIS_READ:J = 0x1b58L

.field private static final TIMEOUT_MILIS_WRITE:J = 0x1b58L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://id.video.intl.xiaomi.com"

    const-string v1, "IN"

    invoke-static {v1}, Lcom/miui/video/base/utils/RegionUtils;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://video.in.intl.xiaomi.com"

    goto :goto_0

    :cond_0
    const-string v1, "ID"

    invoke-static {v1}, Lcom/miui/video/base/utils/RegionUtils;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://id.video.intl.xiaomi.com"

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api2/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/common/net/config/GlobalNetConfig;->SERVER:Ljava/lang/String;

    return-void
.end method

.method public static addHostHeader()Lokhttp3/Interceptor;
    .locals 1

    sget-object v0, Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;->INSTANCE:Lcom/miui/video/base/common/net/config/-$$Lambda$GlobalNetConfig$p88XjeW4kbe7Qb0H7aWREIpMHag;

    return-object v0
.end method

.method public static appendCommonParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    const-string v1, "_sdevid"

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_miui"

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getMIUIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_miuiver"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_andver"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_model"

    sget-object v2, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_device"

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_locale"

    invoke-static {v0}, Lcom/miui/video/common/library/utils/NetParaUtils;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_region"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_appver"

    sget v2, Lcom/miui/video/base/common/internal/AppConfig;->VersionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_ismiui"

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_anoyid"

    invoke-static {}, Lcom/xiaomi/stat/MiStat;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_language"

    invoke-static {}, Lcom/miui/video/base/common/statistics/TrackerUtils;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "ref"

    invoke-static {}, Lcom/miui/video/framework/uri/PageInfoUtils;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isInEURegion()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_res"

    invoke-static {v0}, Lcom/miui/video/common/library/utils/NetParaUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_nonce"

    invoke-static {}, Lcom/miui/video/common/library/utils/NetParaUtils;->nonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, ""

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string v2, "_ver"

    invoke-virtual {p0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_devtype"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_version"

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getMIUIVersionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v1, "_nettype"

    invoke-static {v0}, Lcom/miui/video/common/library/utils/NetParaUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v0, "_uspace"

    invoke-static {}, Lcom/miui/video/common/library/utils/NetParaUtils;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    const-string v0, "_app_coop_md5"

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/common/library/utils/NetParaUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    const-string v0, "st"

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->exeServiceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addHostHeader$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "st"

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/base/account/VideoMiAccountManager;->exeServiceToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enableLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getRetrofitBuilder()Lretrofit2/Retrofit$Builder;
    .locals 3

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/config/GlobalNetConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/video/base/common/net/converter/base/CustomConverterFactory;

    invoke-direct {v2}, Lcom/miui/video/base/common/net/converter/base/CustomConverterFactory;-><init>()V

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/common/net/config/GlobalNetConfig;->SERVER:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobalEnv()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateServerUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
