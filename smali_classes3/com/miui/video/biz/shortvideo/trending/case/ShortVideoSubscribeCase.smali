.class public final Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "ShortVideoSubscribeCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Lcom/miui/video/base/common/net/model/ModelData<",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;",
        "Lcom/miui/video/common/library/base/BaseCase;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "()V",
        "mApi",
        "Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;",
        "getSubscriptionStatus",
        "",
        "baseObserver",
        "Lcom/miui/video/common/library/base/BaseObserver;",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private mApi:Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    const-class v0, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RetroApiService.create(R\u2026hortVideoApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;->mApi:Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    return-void
.end method


# virtual methods
.method public final getSubscriptionStatus(Lcom/miui/video/common/library/base/BaseObserver;)V
    .locals 2
    .param p1    # Lcom/miui/video/common/library/base/BaseObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/library/base/BaseObserver<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;->mApi:Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-interface {v0}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getSubscriptionStatus()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase$getSubscriptionStatus$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase$getSubscriptionStatus$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
