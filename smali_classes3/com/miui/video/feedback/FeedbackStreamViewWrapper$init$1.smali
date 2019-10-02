.class public final Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;
.super Ljava/lang/Object;
.source "FeedbackStreamViewWrapper.kt"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<",
        "Landroid/support/v7/widget/RecyclerView;",
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/feedback/FeedbackStreamViewWrapper$init$1",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;",
        "Landroid/support/v7/widget/RecyclerView;",
        "onPullDownToRefresh",
        "",
        "refreshView",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase;",
        "onPullUpToRefresh",
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
.field final synthetic this$0:Lcom/miui/video/feedback/FeedbackStreamViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/feedback/FeedbackStreamViewWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;->this$0:Lcom/miui/video/feedback/FeedbackStreamViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
    .param p1    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "refreshView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;->this$0:Lcom/miui/video/feedback/FeedbackStreamViewWrapper;

    invoke-virtual {p1}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->getPresenter()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_DOWN_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-interface {p1, v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;->load(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_0
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
    .param p1    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "refreshView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/feedback/FeedbackStreamViewWrapper$init$1;->this$0:Lcom/miui/video/feedback/FeedbackStreamViewWrapper;

    invoke-virtual {p1}, Lcom/miui/video/feedback/FeedbackStreamViewWrapper;->getPresenter()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_UP_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-interface {p1, v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_0
    return-void
.end method
