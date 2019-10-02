.class Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;
.super Lcom/miui/zeus/columbus/remote/e;
.source "BannerAdServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/zeus/columbus/remote/e<",
        "Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded;charset=UTF-8"

.field private static final GOOGLE_PLAY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final KEY_AD_SDK_INFO:Ljava/lang/String; = "adSdkInfo"

.field private static final KEY_API_VERSION:Ljava/lang/String; = "v"

.field private static final KEY_APP_INFO:Ljava/lang/String; = "appInfo"

.field private static final KEY_APP_VERSION_INFO:Ljava/lang/String; = "appsVersionInfo"

.field private static final KEY_CLIENT_INFO:Ljava/lang/String; = "clientInfo"

.field private static final KEY_DEVICE_INFO:Ljava/lang/String; = "deviceInfo"

.field private static final KEY_IMP_REQUESTS:Ljava/lang/String; = "impRequests"

.field private static final KEY_USER_INFO:Ljava/lang/String; = "userInfo"

.field private static final MI_MARKET_PACKAGE_NAME:Ljava/lang/String;

.field private static final SDK_SERVICE_API_VERSION:Ljava/lang/String; = "3.1"

.field private static final TAG:Ljava/lang/String; = "BannerAdServer"


# instance fields
.field private mAdRequest:Lcom/miui/zeus/columbus/ad/enity/AdRequest;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/zeus/columbus/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.mipicks"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"

    :goto_0
    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->MI_MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/remote/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private buildAdSdkInfo()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "version"

    sget-object v2, Lcom/miui/zeus/columbus/common/SdkConfig;->SDK_VERSION:Lcom/miui/zeus/columbus/util/u;

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/util/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BannerAdServer"

    const-string v3, "buildAdSdkInfo"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private buildAppInfo()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/zeus/columbus/util/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BannerAdServer"

    const-string v3, "buildAppInfo"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private buildAppVersionInfo()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mimarketVersion"

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->MI_MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/zeus/columbus/util/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "googleplayVersion"

    iget-object v2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    const-string v3, "com.android.vending"

    invoke-static {v2, v3}, Lcom/miui/zeus/columbus/util/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BannerAdServer"

    const-string v3, "buildAppVersionInfo"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private buildDeviceInfo()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "make"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isInter"

    invoke-static {}, Lcom/miui/zeus/columbus/util/h;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "androidVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "miuiVersion"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private buildImpRequest()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tagId"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mAdRequest:Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    iget-object v3, v3, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->tagId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adsCount"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mAdRequest:Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    iget v3, v3, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->adCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BannerAdServer"

    const-string v3, "buildImpRequest exception:"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private buildUserInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/miui/zeus/columbus/util/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gaid"

    invoke-static {}, Lcom/miui/zeus/columbus/util/gaid/a;->a()Lcom/miui/zeus/columbus/util/gaid/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/zeus/columbus/util/gaid/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "connectionType"

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locale"

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "language"

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ua"

    invoke-static {}, Lcom/miui/zeus/columbus/util/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serviceProvider"

    invoke-static {p1}, Lcom/miui/zeus/columbus/util/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "BannerAdServer"

    const-string v2, "buildUserInfo"

    invoke-static {v1, v2, p1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected buildHttpRequest()Lcom/miui/zeus/columbus/remote/HttpRequest;
    .locals 4

    new-instance v0, Lcom/miui/zeus/columbus/remote/HttpRequest;

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/zeus/columbus/remote/HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/zeus/columbus/remote/HttpRequest$Method;->POST:Lcom/miui/zeus/columbus/remote/HttpRequest$Method;

    invoke-virtual {v0, v1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Lcom/miui/zeus/columbus/remote/HttpRequest$Method;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "deviceInfo"

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildDeviceInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "impRequests"

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildImpRequest()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userInfo"

    iget-object v3, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildUserInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appInfo"

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildAppInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appsVersionInfo"

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildAppVersionInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adSdkInfo"

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->buildAdSdkInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientInfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v"

    const-string v2, "3.1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/remote/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/columbus/remote/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BannerAdServer"

    const-string v3, "buildHttpRequest exception:"

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method protected connect()Lcom/miui/zeus/columbus/remote/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/columbus/remote/d<",
            "Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/zeus/columbus/common/SdkConfig;->APP_KEY:Ljava/lang/String;

    sget-object v2, Lcom/miui/zeus/columbus/common/SdkConfig;->APP_SECRET:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/remote/d;

    move-result-object v0

    return-object v0
.end method

.method protected getTagPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "BannerAdServer"

    return-object v0
.end method

.method protected parseHttpResponse(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;
    .locals 0

    invoke-static {p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;->deserialize(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic parseHttpResponse(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->parseHttpResponse(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/miui/zeus/columbus/ad/enity/AdRequest;)Lcom/miui/zeus/columbus/remote/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/zeus/columbus/ad/enity/AdRequest;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "Lcom/miui/zeus/columbus/ad/bannerad/BannerAdResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "BannerAdServer"

    const-string v1, "request banner ad"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->mAdRequest:Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdServer;->connect()Lcom/miui/zeus/columbus/remote/d;

    move-result-object p1

    return-object p1
.end method
