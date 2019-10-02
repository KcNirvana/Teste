.class public final Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "ShortViewHomePresent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0014J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;",
        "Lcom/miui/video/common/library/base/BasePresenter;",
        "Lcom/miui/video/biz/shortvideo/trending/view/ShortChannelView;",
        "()V",
        "mShortChannelCase",
        "Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;",
        "mSubscribeCase",
        "Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;",
        "createCases",
        "",
        "Lcom/miui/video/common/library/base/BaseCase;",
        "",
        "filterChannel",
        "",
        "list",
        "",
        "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
        "getChannelListData",
        "getSubscriptionStatus",
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
.field private mShortChannelCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;

.field private mSubscribeCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method

.method public static final synthetic access$filterChannel(Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->filterChannel(Ljava/util/List;)V

    return-void
.end method

.method private final filterChannel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mShortChannelCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;

    new-instance v0, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mSubscribeCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mShortChannelCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;

    if-nez v1, :cond_0

    const-string v2, "mShortChannelCase"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mSubscribeCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;

    if-nez v1, :cond_1

    const-string v2, "mSubscribeCase"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mCaseList:Ljava/util/List;

    const-string v1, "mCaseList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChannelListData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mShortChannelCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;

    if-nez v0, :cond_0

    const-string v1, "mShortChannelCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent$getChannelListData$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent$getChannelListData$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;)V

    check-cast v1, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoHomeCase;->getShortVideoChannel(Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public final getSubscriptionStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;->mSubscribeCase:Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;

    if-nez v0, :cond_0

    const-string v1, "mSubscribeCase"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent$getSubscriptionStatus$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent$getSubscriptionStatus$1;-><init>(Lcom/miui/video/biz/shortvideo/trending/present/ShortViewHomePresent;)V

    check-cast v1, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/trending/case/ShortVideoSubscribeCase;->getSubscriptionStatus(Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
