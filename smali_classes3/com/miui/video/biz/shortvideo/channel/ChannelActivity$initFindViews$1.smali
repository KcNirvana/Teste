.class public final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;
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
        "com/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1",
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVInitChannelButton$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMResponseChannelData$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMContext$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/miui/video/biz/shortvideo/R$string;->restore_channel_list:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/shortvideo/R$string;->cancel:I

    sget v4, Lcom/miui/video/biz/shortvideo/R$string;->ok:I

    new-instance p1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$1;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;)V

    move-object v5, p1

    check-cast v5, Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1$onClick$2;-><init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$1;)V

    move-object v6, p1

    check-cast v6, Landroid/view/View$OnClickListener;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    :cond_1
    return-void
.end method
