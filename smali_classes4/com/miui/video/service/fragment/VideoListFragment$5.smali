.class Lcom/miui/video/service/fragment/VideoListFragment$5;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$5;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$5;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$5;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    iget-object p1, p1, Lcom/miui/video/service/fragment/VideoListFragment;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "com.miui.video.KEY_INIT_DATA"

    iget-object v2, p0, Lcom/miui/video/service/fragment/VideoListFragment$5;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    invoke-static {v2}, Lcom/miui/video/service/fragment/VideoListFragment;->access$100(Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/common/data/IVideoListData;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/service/common/data/IVideoListData;->getDataType()I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/fragment/VideoListFragment$5;->this$0:Lcom/miui/video/service/fragment/VideoListFragment;

    const-string v1, "com.miui.video.KEY_INIT_DATA"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
