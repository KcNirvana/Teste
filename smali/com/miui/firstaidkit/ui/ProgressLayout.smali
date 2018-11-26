.class public Lcom/miui/firstaidkit/ui/ProgressLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic ui:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private tX:Landroid/widget/ImageView;

.field private tY:Landroid/widget/ImageView;

.field private tZ:Landroid/widget/ImageView;

.field private ua:Landroid/widget/ImageView;

.field private ub:Landroid/widget/ImageView;

.field private uc:Landroid/os/Handler;

.field private ud:Lmiui/widget/ProgressBar;

.field private ue:Lmiui/widget/ProgressBar;

.field private uf:Lmiui/widget/ProgressBar;

.field private ug:Lmiui/widget/ProgressBar;

.field private uh:Lmiui/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic vF()[I
    .locals 3

    sget-object v0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ui:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ui:[I

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
    sput-object v0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ui:[I

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


# virtual methods
.method public init(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uc:Landroid/os/Handler;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uc:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0293
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 10

    const v9, 0x7f0a02a6

    const v8, 0x7f0a014e

    const v7, 0x7f0a014d

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0293

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0294

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0298

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0709b2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tX:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ud:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0709b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tY:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ue:Lmiui/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0709b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tZ:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uf:Lmiui/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0709b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ua:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ug:Lmiui/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0709b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ub:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uh:Lmiui/widget/ProgressBar;

    return-void
.end method

.method public reset()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ua:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ud:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ue:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uf:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ug:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uh:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public vD(Lcom/miui/firstaidkit/ui/a;)V
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

    new-instance v1, Lcom/miui/firstaidkit/ui/b;

    invoke-direct {v1, p0, p1}, Lcom/miui/firstaidkit/ui/b;-><init>(Lcom/miui/firstaidkit/ui/ProgressLayout;Lcom/miui/firstaidkit/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public vE(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Z)V
    .locals 6

    const v5, 0x7f0202d8

    const v4, 0x7f0202d7

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/firstaidkit/ui/ProgressLayout;->vF()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tX:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ud:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tX:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tX:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ue:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tY:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tY:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uf:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->tZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ua:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ug:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ua:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ua:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->uh:Lmiui/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ub:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/firstaidkit/ui/ProgressLayout;->ub:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

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
