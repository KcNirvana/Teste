.class public Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "FeedbackSubmitUseCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/miui/video/feedback/model/FeedbackContent;",
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
.method protected buildObservable(Lcom/miui/video/feedback/model/FeedbackContent;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/feedback/model/FeedbackContent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-class v0, Lcom/miui/video/feedback/datasource/FeedbackApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/feedback/datasource/FeedbackApi;

    const-string v1, "v1"

    invoke-interface {v0, v1, p1}, Lcom/miui/video/feedback/datasource/FeedbackApi;->submitFeedback(Ljava/lang/String;Lcom/miui/video/feedback/model/FeedbackContent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Lcom/miui/video/feedback/model/FeedbackContent;

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/presenter/usecase/FeedbackSubmitUseCase;->buildObservable(Lcom/miui/video/feedback/model/FeedbackContent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
