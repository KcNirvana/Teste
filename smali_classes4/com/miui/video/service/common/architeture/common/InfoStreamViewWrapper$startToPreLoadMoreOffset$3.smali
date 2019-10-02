.class final Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$3;
.super Ljava/lang/Object;
.source "InfoStreamViewWrapper.kt"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->startToPreLoadMoreOffset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onLastItemVisible"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$3;->this$0:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLastItemVisible()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper$startToPreLoadMoreOffset$3;->this$0:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getPresenter()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_UP_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-interface {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$Presenter;->loadMore(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_0
    return-void
.end method
