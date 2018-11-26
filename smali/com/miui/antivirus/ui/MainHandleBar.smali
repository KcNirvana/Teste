.class public Lcom/miui/antivirus/ui/MainHandleBar;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic aqf:[I


# instance fields
.field private apT:Landroid/widget/Button;

.field private apU:Lcom/miui/common/d/f;

.field private apV:Lmiui/widget/ProgressBar;

.field private apW:Landroid/widget/ImageView;

.field private apX:Lmiui/widget/ProgressBar;

.field private apY:Landroid/widget/ImageView;

.field private apZ:Lmiui/widget/ProgressBar;

.field private aqa:Landroid/widget/ImageView;

.field private aqb:Landroid/widget/TextView;

.field private aqc:Lmiui/widget/ProgressBar;

.field private aqd:Landroid/widget/ImageView;

.field private aqe:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/MainHandleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic awo(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqb:Landroid/widget/TextView;

    return-object v0
.end method

.method private static synthetic awp()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar;->aqf:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar;->aqf:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->values()[Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar;->aqf:[I

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
.method public awk(Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;)V
    .locals 6

    const v1, 0x7f0202d8

    const v0, 0x7f0202d7

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/antivirus/ui/MainHandleBar;->awp()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apV:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apW:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apW:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aql:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_1

    const v0, 0x7f0202d9

    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    if-eq v3, p2, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apX:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apY:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apY:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apZ:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqa:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqa:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqc:Lmiui/widget/ProgressBar;

    invoke-virtual {v2, v5}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqd:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqd:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;->aqm:Lcom/miui/antivirus/ui/MainHandleBar$HandleBarState;

    if-ne v3, p2, :cond_4

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public awl(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apU:Lcom/miui/common/d/f;

    return-void
.end method

.method public awm(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apT:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public awn(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apT:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apT:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apU:Lcom/miui/common/d/f;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00c8
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqe:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apW:Landroid/widget/ImageView;

    const v0, 0x7f0a03b6

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apY:Landroid/widget/ImageView;

    const v0, 0x7f0a03ba

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqa:Landroid/widget/ImageView;

    const v0, 0x7f0a03be

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqd:Landroid/widget/ImageView;

    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apV:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a03b5

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apX:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a03bd

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqc:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a03b9

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apZ:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apT:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->apT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03bf

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/MainHandleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqb:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/antivirus/ui/k;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/k;-><init>(Lcom/miui/antivirus/ui/MainHandleBar;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->aqe:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
