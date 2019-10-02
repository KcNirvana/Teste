.class final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;
.super Ljava/lang/Object;
.source "ChannelActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;-><init>()V
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
        "run"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVNestedScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVNestedScrollView$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMScrollViewOffset$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$moveScrollView$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$setMScrolling$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Z)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
