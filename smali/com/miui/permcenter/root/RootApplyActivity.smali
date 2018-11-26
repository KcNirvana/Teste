.class public Lcom/miui/permcenter/root/RootApplyActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private OO:Landroid/widget/Button;

.field private OP:Ljava/lang/CharSequence;

.field private OQ:I

.field private OR:I

.field private OS:Landroid/widget/Button;

.field private OT:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    new-instance v0, Lcom/miui/permcenter/root/g;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/root/g;-><init>(Lcom/miui/permcenter/root/RootApplyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private PG()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mPkgName:Ljava/lang/String;

    aput-object v2, v1, v5

    const-wide/16 v2, 0x200

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OP:Ljava/lang/CharSequence;

    aput-object v1, v0, v5

    const v1, 0x7f07067e

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private PH(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x7f070673

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x7f070674

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x7f070675

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x7f070676

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x7f070677

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private PI()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mPkgName:Ljava/lang/String;

    aput-object v2, v1, v4

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OP:Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    const v1, 0x7f07067f

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic PJ(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic PK(Lcom/miui/permcenter/root/RootApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    return v0
.end method

.method static synthetic PL(Lcom/miui/permcenter/root/RootApplyActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    return v0
.end method

.method static synthetic PM(Lcom/miui/permcenter/root/RootApplyActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic PN(Lcom/miui/permcenter/root/RootApplyActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/root/RootApplyActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/miui/common/a/d;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->PI()V

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->PG()V

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->finish()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    iput v5, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OT:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    iget-object v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OP:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->PH(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070679

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0355
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030130

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_pkgname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mPkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/root/RootApplyActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OP:Ljava/lang/CharSequence;

    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OT:Landroid/widget/TextView;

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OS:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/root/RootApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OT:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OR:I

    iget-object v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OP:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/miui/permcenter/root/RootApplyActivity;->PH(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07067d

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/root/RootApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->OO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/root/RootApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void
.end method
