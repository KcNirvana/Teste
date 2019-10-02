.class public Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;
.super Ljava/lang/Object;
.source "CoreLocalApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;
    }
.end annotation


# static fields
.field private static mUseMockData:Z

.field private static volatile sApi:Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;
    .locals 3

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->sApi:Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->sApi:Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/net/NetConfig;->getRetrofitBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->mUseMockData:Z

    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    sput-object v1, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->sApi:Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi;->sApi:Lcom/miui/video/galleryplus/galleryvideo/net/CoreLocalApi$API;

    return-object v0
.end method
