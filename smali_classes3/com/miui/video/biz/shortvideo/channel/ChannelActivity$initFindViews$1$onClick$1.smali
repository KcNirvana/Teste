.class final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$1;
.super Ljava/lang/Object;
.source "ChannelActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->onClick(Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "resume_initial_channel_cancel"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->trackChannel(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;

    iget-object p1, p1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMContext$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
