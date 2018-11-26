.class Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/e;


# instance fields
.field private dpAlarmAppMarginTop:F

.field private spAlarmApp:F

.field private spAlarmCountDown:F

.field private spAlarmCountDownToolbar:F

.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmApp:F

    return v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmCountDown:F

    return v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmCountDownToolbar:F

    return v0
.end method

.method private constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmApp:F

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmCountDown:F

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->spAlarmCountDownToolbar:F

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->dpAlarmAppMarginTop:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V

    return-void
.end method

.method private myInterpolator(F)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method private transformHeader(F)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get5(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    cmpl-float v0, p1, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->myInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get1(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->myInterpolator(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    sub-float v3, v4, p1

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    sub-float v2, v4, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;F)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->dpAlarmAppMarginTop:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v2

    sub-float v3, v4, p1

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    sub-float v2, v4, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get8(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$2;-><init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;F)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onContentScrolled()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get4(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onScroll(IF)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->transformHeader(F)V

    return-void
.end method

.method public onStartScroll()V
    .locals 0

    return-void
.end method

.method public onStopScroll()V
    .locals 0

    return-void
.end method
