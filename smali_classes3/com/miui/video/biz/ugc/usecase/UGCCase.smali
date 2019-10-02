.class public Lcom/miui/video/biz/ugc/usecase/UGCCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "UGCCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Lcom/miui/video/biz/ugc/data/UGCPageEntity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/ugc/repository/UGCRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/usecase/UGCCase;->mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;

    return-void
.end method


# virtual methods
.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/usecase/UGCCase;->buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/biz/ugc/data/UGCPageEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/ugc/usecase/UGCCase;->mRepo:Lcom/miui/video/biz/ugc/repository/UGCRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/ugc/repository/UGCRepository;->getUGCVideo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
