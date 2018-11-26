.class public Lcom/miui/antivirus/ui/MainActivityView;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private apA:Ljava/util/ArrayList;

.field private apB:Lcom/miui/antivirus/ui/MainContentFrame;

.field private apC:Lcom/miui/antivirus/result/i;

.field private apD:Lcom/miui/common/d/f;

.field private apE:Lcom/miui/antivirus/ui/MainHandleBar;

.field private apF:Landroid/widget/RelativeLayout;

.field private apG:Lcom/miui/antivirus/result/c;

.field private apH:Lcom/miui/antivirus/result/ScanResultFrame;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/MainActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apA:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic awi(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apD:Lcom/miui/common/d/f;

    return-object v0
.end method


# virtual methods
.method public avR()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avk()V

    return-void
.end method

.method public avS()Lcom/miui/antivirus/result/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apG:Lcom/miui/antivirus/result/c;

    return-object v0
.end method

.method public avT(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/antivirus/ui/MainContentFrame;->avl(ILjava/lang/Boolean;Z)V

    return-void
.end method

.method public avU()V
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

    new-instance v1, Lcom/miui/antivirus/ui/j;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/j;-><init>(Lcom/miui/antivirus/ui/MainActivityView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/ui/MainHandleBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public avV()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    if-nez v0, :cond_0

    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/ScanResultFrame;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    new-instance v0, Lcom/miui/antivirus/result/e;

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/result/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/e;->asQ(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apC:Lcom/miui/antivirus/result/i;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/e;->asP(Lcom/miui/antivirus/result/i;)Lcom/miui/antivirus/result/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/e;->asO(Ljava/util/ArrayList;)Lcom/miui/antivirus/result/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/result/e;->build()Lcom/miui/antivirus/result/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apG:Lcom/miui/antivirus/result/c;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apG:Lcom/miui/antivirus/result/c;

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apD:Lcom/miui/common/d/f;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/c;->asI(Lcom/miui/common/d/f;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MainActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v5}, Lcom/miui/antivirus/result/ScanResultFrame;->getTranslationY()F

    move-result v5

    int-to-float v0, v0

    add-float/2addr v0, v5

    aput v0, v4, v8

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->getTranslationY()F

    move-result v0

    aput v0, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainActivityView;->apH:Lcom/miui/antivirus/result/ScanResultFrame;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainActivityView;->apF:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/miui/antivirus/ui/MainActivityView;->apF:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v6

    aput v6, v5, v8

    iget-object v6, p0, Lcom/miui/antivirus/ui/MainActivityView;->apF:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v6

    int-to-float v1, v1

    sub-float v1, v6, v1

    aput v1, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public avW(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->awm(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avX(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avo(F)V

    return-void
.end method

.method public avY(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->avp(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avZ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->avr(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public awa(Lcom/miui/common/d/f;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apD:Lcom/miui/common/d/f;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->avn(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->awl(Lcom/miui/common/d/f;)V

    return-void
.end method

.method public awb(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainHandleBar;->awn(Ljava/lang/Boolean;)V

    return-void
.end method

.method public awc(Lcom/miui/antivirus/result/i;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView;->apC:Lcom/miui/antivirus/result/i;

    iput-object p2, p0, Lcom/miui/antivirus/ui/MainActivityView;->apA:Ljava/util/ArrayList;

    return-void
.end method

.method public awd(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->avq(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public awe()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avs()V

    return-void
.end method

.method public awf()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avt()V

    return-void
.end method

.method public awg(Lcom/miui/antivirus/utils/SecurityStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->avu(Lcom/miui/antivirus/utils/SecurityStatus;)V

    return-void
.end method

.method public awh(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    invoke-virtual {v0, p1, p2}, Lcom/miui/antivirus/ui/MainHandleBar;->awk(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainContentFrame;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apB:Lcom/miui/antivirus/ui/MainContentFrame;

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainHandleBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apE:Lcom/miui/antivirus/ui/MainHandleBar;

    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView;->apF:Landroid/widget/RelativeLayout;

    return-void
.end method
