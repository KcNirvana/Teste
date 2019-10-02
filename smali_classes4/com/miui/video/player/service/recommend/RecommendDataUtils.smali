.class public Lcom/miui/video/player/service/recommend/RecommendDataUtils;
.super Ljava/lang/Object;
.source "RecommendDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/recommend/RecommendDataUtils$SingletonHolder;,
        Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/player/service/recommend/RecommendDataUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$SingletonHolder;->sInstance:Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    return-object v0
.end method

.method static synthetic lambda$getRecommendData$0(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;->parseData(Lcom/miui/video/base/common/net/model/ModelData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRecommendData(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Z)V
    .locals 1

    const-class v0, Lcom/miui/video/player/service/recommend/RetroRecommendVideoApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/recommend/RetroRecommendVideoApi;

    invoke-interface {v0, p2}, Lcom/miui/video/player/service/recommend/RetroRecommendVideoApi;->getRecommend(Z)Lio/reactivex/Observable;

    move-result-object p2

    sget-object v0, Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;->INSTANCE:Lcom/miui/video/player/service/recommend/-$$Lambda$EkATSmhwsaHcDeln_D-TArSys3M;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/miui/video/player/service/recommend/-$$Lambda$RecommendDataUtils$9vNxx_0LfPpAWhACKffqqFb5AQw;

    invoke-direct {v0, p1}, Lcom/miui/video/player/service/recommend/-$$Lambda$RecommendDataUtils$9vNxx_0LfPpAWhACKffqqFb5AQw;-><init>(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils$1;-><init>(Lcom/miui/video/player/service/recommend/RecommendDataUtils;Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
