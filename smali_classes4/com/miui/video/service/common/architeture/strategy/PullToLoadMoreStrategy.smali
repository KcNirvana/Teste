.class public Lcom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy;
.super Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;
.source "PullToLoadMoreStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullToLoadMoreStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullToLoadMoreStrategy.kt\ncom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy\n*L\n1#1,35:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J8\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy;",
        "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
        "()V",
        "isLoadMore",
        "",
        "isLoadMoreFromTop",
        "isPullRefreshEnabled",
        "onLoad",
        "",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "sourceType",
        "",
        "currentItems",
        "newItems",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadMore()Z
    .locals 1

    const/4 v0, 0x0

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

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    return-object p3

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    check-cast p3, Ljava/util/ArrayList;

    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object p2

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.ArrayList<com.miui.video.framework.base.ui.BaseUIEntity>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
