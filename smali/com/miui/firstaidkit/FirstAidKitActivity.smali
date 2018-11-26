.class public Lcom/miui/firstaidkit/FirstAidKitActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic uY:[I


# instance fields
.field private mLock:Ljava/lang/Object;

.field private uF:Z

.field private uG:Lcom/miui/common/card/CardViewAdapter;

.field private uH:I

.field private uI:I

.field public uJ:Lcom/miui/firstaidkit/a;

.field private uK:Lcom/miui/firstaidkit/d;

.field private uL:Landroid/widget/ImageView;

.field private uM:Landroid/widget/ImageView;

.field private uN:Lcom/miui/common/customview/AutoPasteListView;

.field private uO:I

.field private uP:Landroid/widget/LinearLayout;

.field private uQ:Landroid/widget/LinearLayout;

.field private uR:Lcom/miui/firstaidkit/ui/ProgressLayout;

.field private uS:Ljava/util/Map;

.field private uT:Lcom/miui/common/customview/ScoreTextView;

.field private uU:I

.field private uV:Z

.field private uW:Landroid/widget/TextView;

.field private uX:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Lcom/miui/firstaidkit/a;

    invoke-direct {v0, p0}, Lcom/miui/firstaidkit/a;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0a0286

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0288

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0285

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uL:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uL:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/ui/ProgressLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uR:Lcom/miui/firstaidkit/ui/ProgressLayout;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uR:Lcom/miui/firstaidkit/ui/ProgressLayout;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->reset()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uR:Lcom/miui/firstaidkit/ui/ProgressLayout;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/ui/ProgressLayout;->init(Landroid/os/Handler;)V

    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uX:Landroid/widget/TextView;

    const v0, 0x7f0a028a

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uM:Landroid/widget/ImageView;

    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uT:Lcom/miui/common/customview/ScoreTextView;

    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uP:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0290

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/firstaidkit/r;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/r;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    return-void
.end method

.method static synthetic wA(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    return-object v0
.end method

.method static synthetic wB(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uP:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic wC(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic wD(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/ProgressLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uR:Lcom/miui/firstaidkit/ui/ProgressLayout;

    return-object v0
.end method

.method static synthetic wE(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic wF(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    return p1
.end method

.method static synthetic wG(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wm()V

    return-void
.end method

.method static synthetic wH(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wr()V

    return-void
.end method

.method static synthetic wI(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wu()V

    return-void
.end method

.method static synthetic wJ(Lcom/miui/firstaidkit/FirstAidKitActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->ww(I)V

    return-void
.end method

.method private static synthetic wK()[I
    .locals 3

    sget-object v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uY:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uY:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->values()[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->un:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uo:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->up:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->uq:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uY:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private wm()V
    .locals 11

    const-wide/16 v6, 0x1f4

    const/4 v10, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uP:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wl(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/B;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/B;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "translationY"

    new-array v3, v4, [F

    iget-object v8, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v8

    aput v8, v3, v5

    iget-object v8, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v8

    iget v9, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uU:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v3, v10

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private wn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    invoke-static {}, Lcom/miui/firstaidkit/k;->getInstance()Lcom/miui/firstaidkit/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/firstaidkit/k;->wW(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/CardViewAdapter;->setModelList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private wp()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uU:I

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uO:I

    return-void
.end method

.method private wr()V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    const-wide/16 v6, 0x1f4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wl(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private ws()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0709d6

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0709d7

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/v;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/v;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private wt()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uV:Z

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/d;->vW(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wq()V

    return-void
.end method

.method private wu()V
    .locals 3

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uV:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FirstAidKitActivity"

    const-string/jumbo v2, "stopScan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wk()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/d;->vS()I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uF:Z

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wv()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private wv()V
    .locals 4

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->ww(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uL:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    new-instance v1, Lcom/miui/firstaidkit/y;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/y;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/firstaidkit/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private ww(I)V
    .locals 4

    const/4 v3, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uM:Landroid/widget/ImageView;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uT:Lcom/miui/common/customview/ScoreTextView;

    iget v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uT:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c005b

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uM:Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uT:Lcom/miui/common/customview/ScoreTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    const v1, 0x7f0709cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uW:Landroid/widget/TextView;

    const v1, 0x7f0709ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic wx(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/common/card/CardViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    return-object v0
.end method

.method static synthetic wy(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    return v0
.end method

.method static synthetic wz(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uI:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wj()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->ws()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0286
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300e7

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "00001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "firstaidkit_from_security_home"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kc(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uS:Ljava/util/Map;

    invoke-static {p0}, Lcom/miui/firstaidkit/d;->getInstance(Landroid/content/Context;)Lcom/miui/firstaidkit/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    new-instance v0, Lcom/miui/common/card/CardViewAdapter;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wp()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wt()V

    return-void

    :cond_1
    const-string/jumbo v1, "00006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "firstaidkit_from_security_result"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kc(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "firstaidkit_channel_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uG:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-static {}, Lcom/miui/securityscan/d/a;->KG()V

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/securityscan/d/a;->KH()V

    :cond_0
    return-void
.end method

.method public wi()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0709d6

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0709d7

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/u;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/u;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method public wj()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    new-instance v1, Lcom/miui/firstaidkit/s;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/s;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/d;->vX(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    return-void
.end method

.method public wk()V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/d;->cancel()V

    :cond_0
    return-void
.end method

.method public wl(Landroid/view/View;FFIIJ)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public wo()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput v7, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uH:I

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v6}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wn()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    const-string/jumbo v1, "translationY"

    new-array v2, v8, [F

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v3}, Lcom/miui/common/customview/AutoPasteListView;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uO:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v3}, Lcom/miui/common/customview/AutoPasteListView;->getTranslationY()F

    move-result v3

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "translationY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uQ:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uU:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uN:Lcom/miui/common/customview/AutoPasteListView;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/miui/securityscan/d/a;->KH()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public wq()V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/d;->vT()Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uV:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FirstAidKitActivity"

    const-string/jumbo v2, "refreshOptimizingUi turnToResult"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uF:Z

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wv()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wK()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uX:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "FirstAidKitActivity"

    const-string/jumbo v2, "refreshOptimizingUi popOptimizeEntry"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uK:Lcom/miui/firstaidkit/d;

    new-instance v2, Lcom/miui/firstaidkit/w;

    invoke-direct {v2, p0, v1}, Lcom/miui/firstaidkit/w;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/d;->vU(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Lcom/miui/firstaidkit/b/b;)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0709ac

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0709ad

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f0709ae

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v0, 0x7f0709af

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0709b0

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
