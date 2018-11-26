.class public Lcom/miui/powercenter/view/MainHandleBar;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic aJQ:[I


# instance fields
.field private aJG:Lmiui/widget/ProgressBar;

.field private aJH:Landroid/widget/ImageView;

.field private aJI:Landroid/widget/Button;

.field private aJJ:Lmiui/widget/ProgressBar;

.field private aJK:Landroid/widget/ImageView;

.field private aJL:Lmiui/widget/ProgressBar;

.field private aJM:Landroid/widget/ImageView;

.field private aJN:Lcom/miui/common/d/f;

.field private aJO:Lmiui/widget/ProgressBar;

.field private aJP:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/view/MainHandleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic aUN()[I
    .locals 3

    sget-object v0, Lcom/miui/powercenter/view/MainHandleBar;->aJQ:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powercenter/view/MainHandleBar;->aJQ:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->values()[Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJS:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJT:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJU:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJV:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/powercenter/view/MainHandleBar;->aJQ:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public aUJ(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V
    .locals 6

    const v1, 0x7f0202d8

    const v0, 0x7f0202d7

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/powercenter/view/MainHandleBar;->aUN()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJJ:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJK:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJK:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJW:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_1

    const v0, 0x7f0202d9

    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    if-eq v3, p2, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJO:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJP:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJP:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJG:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJH:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJH:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJL:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJM:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJM:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_4

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public aUK(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJN:Lcom/miui/common/d/f;

    return-void
.end method

.method public aUL(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJI:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public aUM(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJI:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJI:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

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
    iget-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJN:Lcom/miui/common/d/f;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00c8
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0322

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJK:Landroid/widget/ImageView;

    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJP:Landroid/widget/ImageView;

    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJH:Landroid/widget/ImageView;

    const v0, 0x7f0a031f

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJM:Landroid/widget/ImageView;

    const v0, 0x7f0a0321

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJJ:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJO:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJL:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJG:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJI:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/powercenter/view/MainHandleBar;->aJI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
