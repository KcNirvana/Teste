.class public interface abstract Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;
.super Ljava/lang/Object;
.source "BaseLoader.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/BaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseLoaderCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/miui/personalassistant/request/core/BaseResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;
.end method

.method public abstract onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;
.end method

.method public abstract onParseResult(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
