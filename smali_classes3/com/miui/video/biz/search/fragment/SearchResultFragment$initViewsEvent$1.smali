.class public final Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchResultFragment;->initViewsEvent()V
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
        "com/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "p0",
        "",
        "onPageScrolled",
        "p1",
        "",
        "p2",
        "onPageSelected",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

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

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/base/BaseFragment;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_9

    check-cast v0, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment;->refresh()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v2, "module"

    const-string v3, "search_page"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$isTabClick$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "event"

    const-string v3, "result_tab_click"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v2, "event"

    const-string v3, "result_tab_slipe"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iget-object v4, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v4}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/common/library/base/BaseFragment;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/miui/video/common/library/base/BaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {v2, v4}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$setLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;)V

    :cond_6
    const-string v2, "source"

    iget-object v4, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v4}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    iget-object v5, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v5}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/base/BaseFragment;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/common/library/base/BaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-static {v4, v1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$setLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Map;

    const-string p1, "item_id"

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getLastTrackTag$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p1, v0, v2}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1, v3}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$setTabClick$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;Z)V

    goto :goto_4

    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.biz.search.fragment.SearchResultChannelFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    return-void
.end method
