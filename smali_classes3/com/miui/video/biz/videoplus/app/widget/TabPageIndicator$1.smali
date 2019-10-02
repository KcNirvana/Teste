.class Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    iget-boolean v0, v0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->dispatchClickListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->access$000(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->access$000(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    :cond_1
    return-void
.end method
