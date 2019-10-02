.class public Lcom/miui/video/base/common/net/api/RetroApiService;
.super Ljava/lang/Object;
.source "RetroApiService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/common/net/config/NetConfigHolder;->getInstance()Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;->getRetrofitBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
