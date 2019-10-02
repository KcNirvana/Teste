.class Lcom/miui/video/biz/ugc/MomentFragment$6;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MomentFragment.java"


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

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    if-nez p2, :cond_1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p2, p1, v0, v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1300(Lcom/miui/video/biz/ugc/MomentFragment;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p2, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1400(Lcom/miui/video/biz/ugc/MomentFragment;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$800(Lcom/miui/video/biz/ugc/MomentFragment;)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1500(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1500(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->detachPlayer()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$700(Lcom/miui/video/biz/ugc/MomentFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$6;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
