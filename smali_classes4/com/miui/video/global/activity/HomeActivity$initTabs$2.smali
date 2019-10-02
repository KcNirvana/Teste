.class final Lcom/miui/video/global/activity/HomeActivity$initTabs$2;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.field final synthetic $fragmentTags:[Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/global/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/HomeActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iput-object p2, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->$fragmentTags:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->$fragmentTags:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {v1}, Lcom/miui/video/global/activity/HomeActivity;->access$getVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {p1}, Lcom/miui/video/global/activity/HomeActivity;->access$getVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->$fragmentTags:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabInfoFromTag(Ljava/lang/String;)Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$TabInfo;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_TAB_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    invoke-static {p1}, Lcom/miui/video/global/activity/HomeActivity;->access$getVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTab(I)V

    :cond_2
    :goto_1
    return-void
.end method
