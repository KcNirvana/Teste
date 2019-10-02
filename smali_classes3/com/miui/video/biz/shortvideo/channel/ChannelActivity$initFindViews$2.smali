.class public final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;
.super Ljava/lang/Object;
.source "ChannelActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->initFindViews()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2",
        "Landroid/view/View$OnClickListener;",
        "onClick",
        "",
        "v",
        "Landroid/view/View;",
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$cancelDIYChannels(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;Z)V

    const-string p1, "edit_channel_cancel"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->trackChannel(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$2;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->finish()V

    return-void
.end method
