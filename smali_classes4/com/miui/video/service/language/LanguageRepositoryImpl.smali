.class public Lcom/miui/video/service/language/LanguageRepositoryImpl;
.super Ljava/lang/Object;
.source "LanguageRepositoryImpl.java"

# interfaces
.implements Lcom/miui/video/service/language/LanguageRepository;


# instance fields
.field private mApi:Lcom/miui/video/base/common/net/api/RetroApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/api/RetroApi;

    iput-object v0, p0, Lcom/miui/video/service/language/LanguageRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    return-void
.end method

.method static synthetic lambda$getLanguageList$8(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/LanguageListEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/base/common/net/model/LanguageListEntity;

    return-object p0
.end method


# virtual methods
.method public getLanguageList()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-interface {v0}, Lcom/miui/video/base/common/net/api/RetroApi;->getLanguageList()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/service/language/-$$Lambda$LanguageRepositoryImpl$4QdkfpEahuTbQUYU39mIyh7leoI;->INSTANCE:Lcom/miui/video/service/language/-$$Lambda$LanguageRepositoryImpl$4QdkfpEahuTbQUYU39mIyh7leoI;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;->INSTANCE:Lcom/miui/video/service/language/-$$Lambda$haHVlshLqaTryVq6S8CJVbjg-84;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
