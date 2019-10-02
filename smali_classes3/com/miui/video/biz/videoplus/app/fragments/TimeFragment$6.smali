.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;
.super Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;
.source "TimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field argbEvaluator:Landroid/animation/ArgbEvaluator;

.field intEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1300(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->requestLayout()V

    return-void
.end method

.method public onExpand()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->requestLayout()V

    return-void
.end method

.method public onOffsetChange(IF)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->intEvaluator:Landroid/animation/IntEvaluator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->intEvaluator:Landroid/animation/IntEvaluator;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1600(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, p1, v2

    div-float/2addr v2, p1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1400(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1500(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1500(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->intEvaluator:Landroid/animation/IntEvaluator;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, p1, p2

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$700(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
