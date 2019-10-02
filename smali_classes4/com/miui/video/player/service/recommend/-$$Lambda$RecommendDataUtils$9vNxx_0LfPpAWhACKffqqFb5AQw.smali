.class public final synthetic Lcom/miui/video/player/service/recommend/-$$Lambda$RecommendDataUtils$9vNxx_0LfPpAWhACKffqqFb5AQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/-$$Lambda$RecommendDataUtils$9vNxx_0LfPpAWhACKffqqFb5AQw;->f$0:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/-$$Lambda$RecommendDataUtils$9vNxx_0LfPpAWhACKffqqFb5AQw;->f$0:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    check-cast p1, Lcom/miui/video/base/common/net/model/ModelData;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;->lambda$getRecommendData$0(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Lcom/miui/video/base/common/net/model/ModelData;)V

    return-void
.end method
