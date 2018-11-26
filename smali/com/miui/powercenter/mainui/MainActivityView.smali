.class public Lcom/miui/powercenter/mainui/MainActivityView;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private aNO:Ljava/util/ArrayList;

.field private aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

.field private aNQ:Lcom/miui/powercenter/quickoptimize/e;

.field private aNR:Lcom/miui/common/d/f;

.field private aNS:Lcom/miui/powercenter/view/MainHandleBar;

.field private aNT:Landroid/widget/RelativeLayout;

.field private aNU:Lcom/miui/powercenter/quickoptimize/a;

.field private aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/mainui/MainActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNO:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic bcH(Lcom/miui/powercenter/mainui/MainActivityView;)Lcom/miui/powercenter/quickoptimize/MainContentFrame;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    return-object v0
.end method

.method static synthetic bcI(Lcom/miui/powercenter/mainui/MainActivityView;)Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNR:Lcom/miui/common/d/f;

    return-object v0
.end method


# virtual methods
.method public bcA(Lcom/miui/powercenter/quickoptimize/e;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNQ:Lcom/miui/powercenter/quickoptimize/e;

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNO:Ljava/util/ArrayList;

    return-void
.end method

.method public bcB(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPI(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bcC()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPK()V

    return-void
.end method

.method public bcD()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPL()V

    return-void
.end method

.method public bcE(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPN(Z)V

    return-void
.end method

.method public bcF()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPM()V

    return-void
.end method

.method public bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    invoke-virtual {v0, p1, p2}, Lcom/miui/powercenter/view/MainHandleBar;->aUJ(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    return-void
.end method

.method public bcp()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPy()V

    return-void
.end method

.method public bcq(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1, p2}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPB(IZ)V

    return-void
.end method

.method public bcr()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/miui/powercenter/mainui/b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/mainui/b;-><init>(Lcom/miui/powercenter/mainui/MainActivityView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/view/MainHandleBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/view/MainHandleBar;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public bcs()Z
    .locals 13

    const v12, 0x3f99999a    # 1.2f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    if-nez v0, :cond_0

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    new-instance v0, Lcom/miui/powercenter/quickoptimize/b;

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/powercenter/quickoptimize/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/b;->aOs(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/powercenter/quickoptimize/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNQ:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/b;->aOr(Lcom/miui/powercenter/quickoptimize/e;)Lcom/miui/powercenter/quickoptimize/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/b;->aOq(Ljava/util/ArrayList;)Lcom/miui/powercenter/quickoptimize/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/b;->build()Lcom/miui/powercenter/quickoptimize/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNU:Lcom/miui/powercenter/quickoptimize/a;

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNU:Lcom/miui/powercenter/quickoptimize/a;

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNR:Lcom/miui/common/d/f;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/a;->aOo(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNU:Lcom/miui/powercenter/quickoptimize/a;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/a;->aOp()V

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/MainActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42a60000    # 83.0f

    invoke-static {v1, v2}, Lcom/miui/common/b/e;->aHF(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    const-string/jumbo v3, "translationY"

    new-array v4, v10, [F

    iget-object v5, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v5}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getTranslationY()F

    move-result v5

    int-to-float v1, v1

    add-float/2addr v1, v5

    aput v1, v4, v11

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->getTranslationY()F

    move-result v1

    aput v1, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNV:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    const-string/jumbo v3, "alpha"

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v3, 0x7f0a01dc

    invoke-virtual {p0, v3}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-array v4, v10, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/MainActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNT:Landroid/widget/RelativeLayout;

    const-string/jumbo v7, "translationY"

    new-array v8, v9, [F

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    aget v4, v4, v9

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v10, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v11

    aput v12, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/miui/powercenter/mainui/c;

    invoke-direct {v4, p0}, Lcom/miui/powercenter/mainui/c;-><init>(Lcom/miui/powercenter/mainui/MainActivityView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v11

    aput-object v1, v5, v9

    aput-object v0, v5, v10

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return v9

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bct(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/MainHandleBar;->aUL(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bcu(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPG(F)V

    return-void
.end method

.method public bcv(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPH(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bcw(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPJ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bcx(Lcom/miui/common/d/f;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNR:Lcom/miui/common/d/f;

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPE(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/MainHandleBar;->aUK(Lcom/miui/common/d/f;)V

    return-void
.end method

.method public bcy(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPF(F)V

    return-void
.end method

.method public bcz(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/MainHandleBar;->aUM(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNP:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/MainHandleBar;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNS:Lcom/miui/powercenter/view/MainHandleBar;

    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainActivityView;->aNT:Landroid/widget/RelativeLayout;

    return-void
.end method
