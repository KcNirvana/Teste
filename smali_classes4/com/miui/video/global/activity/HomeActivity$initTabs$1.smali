.class final Lcom/miui/video/global/activity/HomeActivity$initTabs$1;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/HomeActivity;->initTabs()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onTabChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $colorStateList:Landroid/content/res/ColorStateList;

.field final synthetic $tabIconIds:[Ljava/lang/Integer;

.field final synthetic $tabTxtIds:[Ljava/lang/Integer;

.field final synthetic $ugcIconIds:[Ljava/lang/Integer;

.field final synthetic $uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

.field final synthetic this$0:Lcom/miui/video/global/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/HomeActivity;[Lcom/miui/video/common/feed/ui/UITab;[Ljava/lang/Integer;[Ljava/lang/Integer;[Ljava/lang/Integer;Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iput-object p2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

    iput-object p3, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$ugcIconIds:[Ljava/lang/Integer;

    iput-object p4, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$tabTxtIds:[Ljava/lang/Integer;

    iput-object p5, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$tabIconIds:[Ljava/lang/Integer;

    iput-object p6, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$colorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 7

    const-string v0, "TAB_LOCAL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/miui/video/global/activity/HomeActivity;->access$setLastTab$p(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V

    :cond_0
    const-string v0, "TAB_MOMENT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v4, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$ugcIconIds:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/global/activity/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v5, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$tabTxtIds:[Ljava/lang/Integer;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/video/global/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-virtual {v5}, Lcom/miui/video/global/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "TAB_LOCAL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/miui/video/base/routers/videoplus/VideoPlusService;->startVideoPlusMainActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/global/activity/HomeActivity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$uiTabs:[Lcom/miui/video/common/feed/ui/UITab;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v4, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$tabIconIds:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/global/activity/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v5, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$tabTxtIds:[Ljava/lang/Integer;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/video/global/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->$colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v0}, Lcom/miui/video/global/activity/HomeActivity;->access$getVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/miui/video/global/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setBackgroundColor(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v0}, Lcom/miui/video/global/activity/HomeActivity;->access$getLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/miui/video/global/activity/HomeActivity;->access$setLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "main_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "main_tab_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v3, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v3}, Lcom/miui/video/global/activity/HomeActivity;->access$getLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-static {v2, v3}, Lcom/miui/video/global/activity/HomeActivity;->access$switchTrackTag(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v2, p1}, Lcom/miui/video/global/activity/HomeActivity;->access$setLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    const-string p1, "item_id"

    iget-object v2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iget-object v3, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v3}, Lcom/miui/video/global/activity/HomeActivity;->access$getLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-static {v2, v3}, Lcom/miui/video/global/activity/HomeActivity;->access$switchTrackTag(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst;->Companion:Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst$Companion;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/shortvideo/track/ShortVideoTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
