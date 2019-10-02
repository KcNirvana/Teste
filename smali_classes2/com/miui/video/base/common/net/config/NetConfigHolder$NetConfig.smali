.class public interface abstract Lcom/miui/video/base/common/net/config/NetConfigHolder$NetConfig;
.super Ljava/lang/Object;
.source "NetConfigHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/config/NetConfigHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetConfig"
.end annotation


# virtual methods
.method public abstract enableLog()Z
.end method

.method public abstract getOkHttpClient()Lokhttp3/OkHttpClient;
.end method

.method public abstract getRetrofitBuilder()Lretrofit2/Retrofit$Builder;
.end method

.method public abstract getServerUrl()Ljava/lang/String;
.end method

.method public abstract isGlobalEnv()Z
.end method

.method public abstract updateServerUrl(Ljava/lang/String;)V
.end method
