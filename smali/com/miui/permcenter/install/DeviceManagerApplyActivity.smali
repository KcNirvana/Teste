.class public Lcom/miui/permcenter/install/DeviceManagerApplyActivity;
.super Lmiui/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Qg:Landroid/widget/Button;

.field private Qh:I

.field private Qi:I

.field private Qj:Landroid/widget/Button;

.field private Qk:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    new-instance v0, Lcom/miui/permcenter/install/m;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/m;-><init>(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private RA()V
    .locals 6

    const/high16 v0, -0x80000000

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x300

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setNavigationBarColor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic RB(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic RC(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    return v0
.end method

.method static synthetic RD(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    return v0
.end method

.method static synthetic RE(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic RF(Lcom/miui/permcenter/install/DeviceManagerApplyActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    return p1
.end method

.method private Rz(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f0709d8

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f0709d9

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f0709da

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->finish()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qk:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Rz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070679

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0a0355
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012c

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->RA()V

    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qk:Landroid/widget/TextView;

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qj:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qk:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qi:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Rz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->Qg:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/DeviceManagerApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
