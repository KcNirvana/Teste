.class final Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;
.super Ljava/lang/Object;
.source "UICardChannel.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;-><init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;Landroid/content/Context;Landroid/view/ViewGroup;I)V
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
        "v",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$setMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.shortvideo.trending.entities.ChannelItemEntity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getVView$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isInEditState()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setNew(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getVRedIcon$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->getMClickedChannelsIdSet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->getMClickedChannelsIdSet()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->setMIsNewChannelInvalid(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->getMClickedChannelsIdSet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "is_channel_clicked_new"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-virtual {v1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->getMClickedChannelsIdSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_a
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isFavor()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getItemPosition$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;->onFavorClicked(I)V

    goto/16 :goto_2

    :cond_c
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMContext$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity;->Companion:Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMContext$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/shortvideo/channel/ChannelDetailActivity$Companion;->newIntent(Landroid/content/Context;Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getVEditButton$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getVView$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_17

    :cond_f
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_1

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_12

    return-void

    :cond_12
    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isFavor()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;->onRemoveFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V

    goto :goto_2

    :cond_15
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$eClick$1;->this$0:Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;->access$getMChannelItemEntity$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel;)Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16
    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardChannel$OnEditChannelListener;->onAddFavor(Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;)V

    :cond_17
    :goto_2
    return-void
.end method
