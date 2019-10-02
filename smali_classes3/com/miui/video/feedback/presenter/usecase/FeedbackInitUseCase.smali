.class public Lcom/miui/video/feedback/presenter/usecase/FeedbackInitUseCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "FeedbackInitUseCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;>;"
        }
    .end annotation

    const-class p1, Lcom/miui/video/feedback/datasource/FeedbackApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/feedback/datasource/FeedbackApi;

    invoke-interface {p1}, Lcom/miui/video/feedback/datasource/FeedbackApi;->initFeedback()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
