.class public final Lcom/miui/video/feedback/FeedbackLoadStrategy;
.super Lcom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy;
.source "FeedbackLoadStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedbackLoadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedbackLoadStrategy.kt\ncom/miui/video/feedback/FeedbackLoadStrategy\n*L\n1#1,23:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/miui/video/feedback/FeedbackLoadStrategy;",
        "Lcom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy;",
        "()V",
        "onLoad",
        "",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "sourceType",
        "",
        "currentItems",
        "newItems",
        "biz_feedback_release"
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

    invoke-direct {p0}, Lcom/miui/video/service/common/architeture/strategy/PullToLoadMoreStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
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
    const/4 p1, 0x0

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_4

    check-cast p1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object p2

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.ArrayList<com.miui.video.framework.base.ui.BaseUIEntity>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
