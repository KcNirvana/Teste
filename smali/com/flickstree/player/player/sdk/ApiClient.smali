.class public Lcom/flickstree/player/player/sdk/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# static fields
.field private static flickstreeService:Lcom/flickstree/player/player/sdk/ApiEndPoints;

.field private static flickstreeServiceApi:Lcom/flickstree/player/player/sdk/ApiEndPoints;

.field static final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/flickstree/player/player/sdk/ApiClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildService(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;
    .locals 1

    sget-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeService:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    if-nez p0, :cond_0

    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "https://www.flickstree.com/"

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    sget-object v0, Lcom/flickstree/player/player/sdk/ApiClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/flickstree/player/player/sdk/ApiEndPoints;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flickstree/player/player/sdk/ApiEndPoints;

    sput-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeService:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    :cond_0
    sget-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeService:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    return-object p0
.end method

.method public static buildServiceApi(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/ApiEndPoints;
    .locals 1

    sget-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeServiceApi:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    if-nez p0, :cond_0

    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "https://api.flickstree.com/"

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    sget-object v0, Lcom/flickstree/player/player/sdk/ApiClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/flickstree/player/player/sdk/ApiEndPoints;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flickstree/player/player/sdk/ApiEndPoints;

    sput-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeServiceApi:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    :cond_0
    sget-object p0, Lcom/flickstree/player/player/sdk/ApiClient;->flickstreeServiceApi:Lcom/flickstree/player/player/sdk/ApiEndPoints;

    return-object p0
.end method
