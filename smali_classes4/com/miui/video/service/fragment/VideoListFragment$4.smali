.class Lcom/miui/video/service/fragment/VideoListFragment$4;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/fragment/VideoListFragment;
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

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$4;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const-string p1, "KEY_EDIT_MODE_EXIT"

    iget-object v0, p0, Lcom/miui/video/service/fragment/VideoListFragment$4;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->access$000(Lcom/miui/video/service/fragment/VideoListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$4;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$4;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v2, "KEY_EDIT_MODE_OPEN"

    invoke-interface {p1, v2, v1, v0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$4;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v2, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
