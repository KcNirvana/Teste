.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

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
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v0

    if-eq v0, p1, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$900(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_all:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v0, "1"

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_video:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "2"

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_whatsapp:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    const-string v1, "3"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_facebook:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    const-string v1, "4"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_instagram:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "5"

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayFrom(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordChannelTabClickLocal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$602(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;I)I

    :cond_7
    return-void
.end method
