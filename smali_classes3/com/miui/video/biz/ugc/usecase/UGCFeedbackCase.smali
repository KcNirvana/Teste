.class public Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "UGCFeedbackCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;",
        ">;"
    }
.end annotation


# instance fields
.field private mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/ugc/repository/UGCRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;->mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;

    return-void
.end method


# virtual methods
.method protected buildObservable(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;->mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/repository/UGCRepository;->feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;->buildObservable(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
