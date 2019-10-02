.class public final Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "ShortVideoHomeCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;",
        "Lcom/miui/video/common/library/base/BaseCase;",
        "",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "()V",
        "mApi",
        "Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;",
        "convertToChannelItem",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "getShortVideoChannel",
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

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->mApi:Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    return-void
.end method

.method public static final synthetic access$convertToChannelItem(Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->convertToChannelItem(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object p0

    return-object p0
.end method

.method private final convertToChannelItem(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getFixed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setFixed(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getIsNew()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setNew(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setSelected(Ljava/lang/Integer;)V

    iget-wide v1, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubChannel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setSubChannel(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.item_id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRec_channel_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setRec_channel_id(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getShortVideoChannel(Lcom/miui/video/common/library/base/BaseObserver;)V
    .locals 2
    .param p1    # Lcom/miui/video/common/library/base/BaseObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/library/base/BaseObserver<",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->mApi:Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-interface {v0}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getShortVideoChannelList()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$2;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$3;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$3;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$4;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$4;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$5;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$6;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$6;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$7;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$7;-><init>(Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$8;->INSTANCE:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase$getShortVideoChannel$8;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->execute(Lio/reactivex/Observable;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
