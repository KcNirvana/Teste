.class public interface abstract Lcom/miui/video/service/update/gpmarket/GPUpdateApi;
.super Ljava/lang/Object;
.source "GPUpdateApi.java"


# virtual methods
.method public abstract checkGPUpdate()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/service/update/entity/UpdateEntity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/up?version=v1"
    .end annotation
.end method
