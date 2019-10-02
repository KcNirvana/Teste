.class public Lcom/miui/video/service/share/net/ShareUseCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "ShareUseCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private repository:Lcom/miui/video/service/share/net/ShareRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/miui/video/service/share/net/ShareRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/share/net/ShareUseCase;->repository:Lcom/miui/video/service/share/net/ShareRepositoryImpl;

    return-void
.end method


# virtual methods
.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/share/net/ShareUseCase;->buildObservable(Ljava/lang/String;)Lio/reactivex/Observable;

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
            "Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/share/net/ShareUseCase;->repository:Lcom/miui/video/service/share/net/ShareRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/miui/video/service/share/net/ShareRepositoryImpl;->getShortUrl(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
