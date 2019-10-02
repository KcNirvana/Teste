.class public final Lcom/miui/video/feedback/FeedbackStreamViewWrapper;
.super Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;
.source "FeedbackStreamViewWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/video/feedback/FeedbackStreamViewWrapper;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "view",
        "Lcom/miui/video/common/feed/UIRecyclerListView;",
        "(Lcom/miui/video/common/feed/UIRecyclerListView;)V",
        "lastSize",
        "",
        "getLastSize",
        "()I",
        "setLastSize",
        "(I)V",
        "init",
        "",
        "setList",
        "data",
        "",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "biz_feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private lastSize:I


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0
    .param p1    # Lcom/miui/video/common/feed/UIRecyclerListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    return-void
.end method


# virtual methods
.method public final getLastSize()I
    .locals 1

    iget v0, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->lastSize:I

    return v0
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->showLoadingView()V

    invoke-virtual {p0}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->getView()Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;-><init>(Lcom/miui/video/feedback/FeedbackStreamViewWrapper;)V

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    :cond_0
    return-void
.end method

.method public final setLastSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->lastSize:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->lastSize:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->lastSize:I

    invoke-super {p0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->setList(Ljava/util/List;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v1, p1}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->scrollToPosition(ZI)V

    return-void
.end method
