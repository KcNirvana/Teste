.class public interface abstract Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;
.super Ljava/lang/Object;
.source "RequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/RequestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestLoaderCallBack"
.end annotation


# virtual methods
.method public abstract onParseRequest(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;)Lcom/miui/personalassistant/request/core/BaseResult;
.end method

.method public abstract onPreRequest(I)V
.end method

.method public abstract onRequestFinished(ILcom/miui/personalassistant/request/core/BaseResult;)V
.end method
