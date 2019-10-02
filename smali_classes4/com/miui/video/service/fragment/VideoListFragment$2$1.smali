.class Lcom/miui/video/service/fragment/VideoListFragment$2$1;
.super Lcom/miui/video/service/widget/ui/UIVideoGroup;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/fragment/VideoListFragment$2;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/video/service/fragment/VideoListFragment$2;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$2$1;->this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/service/widget/ui/UIVideoGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public isEditModeEquals(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$2$1;->this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->access$000(Lcom/miui/video/service/fragment/VideoListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCheckedChange()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$2$1;->this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$2$1;->this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v3, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-interface {v0, v3, v2, v1}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$2$1;->this$1:Lcom/miui/video/service/fragment/VideoListFragment$2;

    iget-object v0, v0, Lcom/miui/video/service/fragment/VideoListFragment$2;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v3, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
