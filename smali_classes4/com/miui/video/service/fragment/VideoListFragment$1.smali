.class Lcom/miui/video/service/fragment/VideoListFragment$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/fragment/VideoListFragment;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/fragment/VideoListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$1;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 4

    const-string v0, "KEY_EDIT_MODE_OPEN"

    iget-object v1, p0, Lcom/miui/video/service/fragment/VideoListFragment$1;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v1}, Lcom/miui/video/service/fragment/VideoListFragment;->access$000(Lcom/miui/video/service/fragment/VideoListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$1;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$1;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "com.miui.video.KEY_LOAD_MORE_DATA"

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment$1;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v2}, Lcom/miui/video/service/fragment/VideoListFragment;->access$100(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
