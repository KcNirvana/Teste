.class public Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "SubscribeUserCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;",
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
.method protected buildObservable(Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;->authorId:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;->subscribe:Z

    invoke-interface {v0, v1, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->subscriptionAuthor(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;->buildObservable(Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
