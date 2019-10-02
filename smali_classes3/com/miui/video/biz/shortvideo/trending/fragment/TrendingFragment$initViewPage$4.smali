.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->initViewPage()V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "position",
        "",
        "onPageScrolled",
        "position1",
        "",
        "pposition2",
        "onPageSelected",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->isNew()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragmentKt;->access$recordNewChannelClicked(Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->setNew(Ljava/lang/Integer;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMFragments$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/base/BaseFragment;

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Lcom/miui/video/common/library/base/BaseFragment;->setTitleIconId(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getVIndicator$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)I

    move-result v0

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$setLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;I)V

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)I

    move-result v3

    invoke-static {v0, v3, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$trackerChannel(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v3, "module"

    const-string v4, "main_page"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$isTabClick$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "event"

    const-string v4, "channel_tab_click"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const-string v3, "event"

    const-string v4, "channel_tab_slide"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string v3, "source"

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v4}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v5}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    move-object v4, v1

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v4, p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$setLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;I)V

    check-cast v3, Ljava/util/Map;

    const-string p1, "item_id"

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v4}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getMShowedItemEntities$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {v5}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$getLastTrackerTabPosition$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/miui/video/biz/shortvideo/trending/entities/ChannelItemEntity;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst;->Companion:Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst$Companion;

    invoke-virtual {p1, v0, v3}, Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment$initViewPage$4;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    invoke-static {p1, v2}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->access$setTabClick$p(Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;Z)V

    return-void

    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.common.library.base.BaseFragment<com.miui.video.common.library.base.impl.IPresenter<com.miui.video.common.library.base.impl.IView>>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
