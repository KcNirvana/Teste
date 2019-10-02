.class public interface abstract Lcom/miui/video/player/service/recommend/RetroRecommendVideoApi;
.super Ljava/lang/Object;
.source "RetroRecommendVideoApi.java"


# virtual methods
.method public abstract getRecommend(Z)Lio/reactivex/Observable;
    .param p1    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "is_from_gallery"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "local/diversion?version=v1"
    .end annotation
.end method
