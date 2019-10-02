.class Lcom/miui/video/biz/ugc/MomentFragment$5;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$5;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$5;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1200(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->loadMore()V

    return-void
.end method
