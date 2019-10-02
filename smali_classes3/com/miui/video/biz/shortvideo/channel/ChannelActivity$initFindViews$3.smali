.class final Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;
.super Ljava/lang/Object;
.source "ChannelActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->initFindViews()V
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVUITitleBar$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Lcom/miui/video/common/library/widget/UICommonTitleBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget p1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_channel_edit:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string p1, "edit_channel_click"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v1}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->trackChannel(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getVUITitleBar$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Lcom/miui/video/common/library/widget/UICommonTitleBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    sget p1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_channel_edit_confirm:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->setMIsInEditState(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMLastFavoriteList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMLastRecommendedlList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMLastFavoriteList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMFavoriteChannelList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMLastRecommendedlList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMRecommendedChannelList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$changeEditState(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;ZZ)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->getMIsInEditState()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "edit_channel_save"

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity$initFindViews$3;->this$0:Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;->access$getMFavoriteChannelList$p(Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->createFavorChannelAppend(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->trackChannel(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_6
    return-void
.end method
