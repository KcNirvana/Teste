.class public Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;
.super Ljava/lang/Object;
.source "GlobalNetConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/config/GlobalNetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttpClientHolder"
.end annotation


# static fields
.field private static INSTANCE:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/net/config/GlobalNetConfig;->addHostHeader()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/common/net/interceptor/GlobalHttpInterceptor;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/interceptor/GlobalHttpInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;

    new-instance v2, Lcom/miui/video/base/common/net/cookie/cache/SetCookieCache;

    invoke-direct {v2}, Lcom/miui/video/base/common/net/cookie/cache/SetCookieCache;-><init>()V

    new-instance v3, Lcom/miui/video/base/common/net/cookie/persistence/SharedPrefsCookiePersistor;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/video/base/common/net/cookie/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;-><init>(Lcom/miui/video/base/common/net/cookie/cache/CookieCache;Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/interceptor/ResponseInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;->INSTANCE:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/miui/video/base/common/net/config/GlobalNetConfig$OkHttpClientHolder;->INSTANCE:Lokhttp3/OkHttpClient;

    return-object v0
.end method
