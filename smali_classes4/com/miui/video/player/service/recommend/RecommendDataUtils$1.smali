.class Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;
.super Ljava/lang/Object;
.source "RecommendDataUtils.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/recommend/RecommendDataUtils;->getRecommendData(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/recommend/RecommendDataUtils;

.field final synthetic val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/recommend/RecommendDataUtils;Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->this$0:Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    iput-object p2, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;->returnSuccess()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->val$resultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;->returnFail(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;->onNext(Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
