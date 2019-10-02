.class Lcom/miui/video/biz/history/VideoHistoryActivity$3;
.super Ljava/lang/Object;
.source "VideoHistoryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/history/VideoHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$200(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$300(Lcom/miui/video/biz/history/VideoHistoryActivity;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$302(Lcom/miui/video/biz/history/VideoHistoryActivity;I)I

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$300(Lcom/miui/video/biz/history/VideoHistoryActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$400(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$500(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$002(Lcom/miui/video/biz/history/VideoHistoryActivity;Lcom/miui/video/service/fragment/VideoListFragment;)Lcom/miui/video/service/fragment/VideoListFragment;

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v0}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$000(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/fragment/VideoListFragment;->exitEditMode()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "play_history"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {v1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$100(Lcom/miui/video/biz/history/VideoHistoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$3;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$102(Lcom/miui/video/biz/history/VideoHistoryActivity;Z)Z

    const-string v1, "event"

    const-string v2, "play_history_tab_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "event"

    const-string v2, "play_history_tab_swipe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_1

    const-string p1, "item_type"

    const-string v2, "play_history_online"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p1, "item_type"

    const-string v2, "play_history_local"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method
