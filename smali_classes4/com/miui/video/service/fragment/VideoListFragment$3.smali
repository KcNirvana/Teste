.class Lcom/miui/video/service/fragment/VideoListFragment$3;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/fragment/VideoListFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/fragment/VideoListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "com.miui.video.KEY_INIT_DATA"

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v2}, Lcom/miui/video/service/fragment/VideoListFragment;->access$100(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v1, "com.miui.video.KEY_INIT_DATA"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    const-string p1, "KEY_EDIT_MODE_OPEN"

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->access$000(Lcom/miui/video/service/fragment/VideoListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->access$300(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$3;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {p1}, Lcom/miui/video/service/fragment/VideoListFragment;->access$300(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/widget/ui/UITitleBar;

    move-result-object p1

    sget v0, Lcom/miui/video/service/R$drawable;->ic_lv_menu_checked_null:I

    invoke-virtual {p1, v0}, Lcom/miui/video/service/widget/ui/UITitleBar;->setRightView(I)Lcom/miui/video/service/widget/ui/UITitleBar;

    :cond_1
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
