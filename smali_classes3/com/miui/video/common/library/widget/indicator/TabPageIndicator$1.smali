.class Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$000(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->getIndex()I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$100(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$100(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;->onTabChangeClick(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$000(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$200(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$200(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    :cond_1
    return-void
.end method
