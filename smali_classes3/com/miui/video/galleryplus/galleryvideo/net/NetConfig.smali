.class public Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig$OkHttpClientHolder;
    }
.end annotation


# static fields
.field public static API:Ljava/lang/String; = null

.field private static CACHE_DIR:Ljava/lang/String; = ""

.field public static final CACHE_SIZE:J = 0xa00000L

.field private static final DATA_KEY_SERVER_URL:Ljava/lang/String; = "server_url"

.field public static FORMAL_HOST:Ljava/lang/String; = null

.field public static FORMAL_SCHEMA:Ljava/lang/String; = null

.field private static SERVER:Ljava/lang/String; = null

.field public static final TEST_HOST:Ljava/lang/String; = "10.98.16.208:9797"

.field public static final TEST_HOST_INTERNAL:Ljava/lang/String; = "cp.v3.tv.mitvos.com"

.field public static final TEST_SCHEMA:Ljava/lang/String; = "http://"

.field public static final TIMEOUT_MILIS_CONNECT:J = 0x1388L

.field public static final TIMEOUT_MILIS_READ:J = 0xfa0L

.field public static final TIMEOUT_MILIS_WRITE:J = 0xfa0L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/miui/video/base/common/internal/AppConfig;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->FORMAL_SCHEMA:Ljava/lang/String;

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->FORMAL_SCHEMA:Ljava/lang/String;

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->FORMAL_HOST:Ljava/lang/String;

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->FORMAL_HOST:Ljava/lang/String;

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->API:Ljava/lang/String;

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->API:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->FORMAL_SCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->FORMAL_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->API:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->SERVER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->CACHE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendCommonParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static applyServerUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->SERVER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->CACHE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static getRetrofitBuilder()Lretrofit2/Retrofit$Builder;
    .locals 3

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig$OkHttpClientHolder;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/video/base/common/net/CustomConverterFactory;

    invoke-direct {v2}, Lcom/miui/video/base/common/net/CustomConverterFactory;-><init>()V

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method public static getServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->SERVER:Ljava/lang/String;

    return-object v0
.end method
