.class final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrendingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrendingFragment.kt\ncom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,497:1\n671#2:498\n744#2,2:499\n*E\n*S KotlinDebug\n*F\n+ 1 TrendingFragment.kt\ncom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1\n*L\n244#1:498\n244#1,2:499\n*E\n"
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "channel_list_click"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/ShortVideoTrackerKt;->trackChannel(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/miui/video/biz/shortvideo/channel/ChannelActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "channels"

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMChannelItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getFixed()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
