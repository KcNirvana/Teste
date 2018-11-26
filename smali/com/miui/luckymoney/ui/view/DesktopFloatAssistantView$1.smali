.class final Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field lastCollision:Z

.field left:F

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

.field top:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->left:F

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->top:F

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->x:F

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->y:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->lastCollision:Z

    return-void
.end method

.method private isCollision(IIIIIIII)Z
    .locals 2

    const/4 v1, 0x0

    if-lt p1, p5, :cond_0

    add-int v0, p5, p7

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    if-gt p1, p5, :cond_1

    add-int v0, p1, p3

    if-gt v0, p5, :cond_1

    return v1

    :cond_1
    if-lt p2, p6, :cond_2

    add-int v0, p6, p8

    if-lt p2, v0, :cond_2

    return v1

    :cond_2
    if-gt p2, p6, :cond_3

    add-int v0, p2, p4

    if-gt v0, p6, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private updateView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->x:F

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->y:F

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get7(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get9(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v5, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->left:F

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->top:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get8(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0, v9}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-set1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0, v10}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-set1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->updateView()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-array v0, v5, [I

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v4}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    aget v5, v0, v9

    aget v6, v0, v10

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->isCollision(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->lastCollision:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iput-boolean v10, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->lastCollision:Z

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->lastCollision:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iput-boolean v9, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->lastCollision:Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get8(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0, v10}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-set1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-set0(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Z)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get9(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iget v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->x:F

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewXPos(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iget v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->y:F

    iget v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewYPos(I)V

    :cond_5
    iput v11, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startX:F

    iput v11, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->startY:F

    new-array v0, v5, [I

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get10(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v4}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    aget v5, v0, v9

    aget v6, v0, v10

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get1(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->isCollision(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/miui/luckymoney/config/CommonConfig;->setDesktopFloatWindowEnable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/16 v1, 0x2ee

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewXPos(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLastFloatViewYPos(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeFloatView()V

    :cond_6
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$1;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeCancleFloatView()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
