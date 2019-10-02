.class public interface abstract Lcom/miui/video/base/data/RetroPlayApi;
.super Ljava/lang/Object;
.source "RetroPlayApi.java"


# virtual methods
.method public abstract getPlayInfo(Lorg/json/JSONArray;)Lio/reactivex/Observable;
    .param p1    # Lorg/json/JSONArray;
        .annotation runtime Lretrofit2/http/Query;
            value = "item_ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/PlayInfoModelData<",
            "Lcom/miui/video/base/common/net/model/PlayEntity;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "play/batch?version=v1"
    .end annotation
.end method
