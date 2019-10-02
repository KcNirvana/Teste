.class public interface abstract Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;
.super Ljava/lang/Object;
.source "RecommendDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/recommend/RecommendDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestResultListener"
.end annotation


# virtual methods
.method public abstract parseData(Lcom/miui/video/base/common/net/model/ModelData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract returnFail(Ljava/lang/Throwable;)V
.end method

.method public abstract returnSuccess()V
.end method
