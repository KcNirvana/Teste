.class public Lcom/miui/permcenter/install/AdbInputApplyActivity;
.super Lmiui/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Qb:Landroid/widget/Button;

.field private Qc:I

.field private Qd:I

.field private Qe:Landroid/widget/Button;

.field private Qf:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    new-instance v0, Lcom/miui/permcenter/install/l;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/l;-><init>(Lcom/miui/permcenter/install/AdbInputApplyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Rp(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f07069d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f07069e

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f07069f

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I)Ljava/lang/String;

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

.method private Rq()V
    .locals 6

    const/high16 v0, -0x80000000

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getWindow()Landroid/view/Window;

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

.method static synthetic Rr(Lcom/miui/permcenter/install/AdbInputApplyActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic Rs(Lcom/miui/permcenter/install/AdbInputApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    return v0
.end method

.method static synthetic Rt(Lcom/miui/permcenter/install/AdbInputApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    return v0
.end method

.method static synthetic Ru(Lcom/miui/permcenter/install/AdbInputApplyActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Rv(Lcom/miui/permcenter/install/AdbInputApplyActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    return p1
.end method

.method public static setEnabled(Z)V
    .locals 2

    const-string/jumbo v1, "persist.security.adbinput"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->finish()V

    :cond_0
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
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v3}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_input"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qf:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Rp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070679

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/miui/permcenter/install/e;->RR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_input"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const v0, 0x7f030130

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Rq()V

    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qf:Landroid/widget/TextView;

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qe:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qe:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qf:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qd:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Rp(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->Qb:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInputApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
