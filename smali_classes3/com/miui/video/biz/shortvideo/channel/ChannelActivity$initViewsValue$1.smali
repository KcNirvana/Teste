.class public final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;
.super Ljava/lang/Object;
.source "ChannelActivity.kt"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1",
        "Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;",
        "onChildDraw",
        "",
        "dy",
        "",
        "onItemDismiss",
        "position",
        "onItemMove",
        "fromPosition",
        "toPosition",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildDraw(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMScrolling$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$setMScrolling$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$setMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVNestedScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMoveScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onItemDismiss(I)V
    .locals 0

    return-void
.end method

.method public onItemMove(II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method
