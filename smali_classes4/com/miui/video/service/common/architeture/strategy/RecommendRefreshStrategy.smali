.class public final Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;
.super Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
.source "RecommendRefreshStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecommendRefreshStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendRefreshStrategy.kt\ncom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy\n*L\n1#1,97:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0002J(\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u0004j\u0008\u0012\u0004\u0012\u00020\u000b`\u00062\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J8\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016J8\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;",
        "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
        "()V",
        "mCurrentIdList",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "addToCurrentList",
        "",
        "id",
        "doDeDuplication",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "newList",
        "",
        "isLoadMore",
        "",
        "isLoadMoreFromTop",
        "isPullRefreshEnabled",
        "onLoad",
        "sourceType",
        "",
        "currentItems",
        "newItems",
        "onLoadMore",
        "Companion",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy$Companion;

.field public static final MAX_CACHE_ID_LENGTH:I = 0x1e


# instance fields
.field private final mCurrentIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->Companion:Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    return-void
.end method

.method private final addToCurrentList(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final doDeDuplication(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v2, v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "items_full_image"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "list_item_full"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v4

    const-string v5, "tmp[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "shortvideo"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v4

    const-string v5, "tmp[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "longvideo"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v4

    const-string v5, "tmp[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "playlist"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v5

    const-string v6, "tmp[0]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    const-string v3, "tmp[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tmp[0].playlistId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->addToCurrentList(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->mCurrentIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v5

    const-string v6, "tmp[0]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    const-string v3, "tmp[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tmp[0].item_id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->addToCurrentList(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public isLoadMore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadMoreFromTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPullRefreshEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLoad(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, p3}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->doDeDuplication(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->onTopSort(Ljava/util/List;)V

    return-object p1
.end method

.method public onLoadMore(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p3, :cond_3

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    invoke-direct {p0, p3}, Lcom/miui/video/service/common/architeture/strategy/RecommendRefreshStrategy;->doDeDuplication(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_2

    move-object p3, p2

    check-cast p3, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.ArrayList<com.miui.video.framework.base.ui.BaseUIEntity>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-object p2
.end method
