.class public Lcom/miui/antivirus/ui/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static apz:Lcom/miui/antivirus/ui/b;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/antivirus/ui/b;
    .locals 2

    const-class v1, Lcom/miui/antivirus/ui/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antivirus/ui/b;->apz:Lcom/miui/antivirus/ui/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/ui/b;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antivirus/ui/b;->apz:Lcom/miui/antivirus/ui/b;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/ui/b;->apz:Lcom/miui/antivirus/ui/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public avQ(I)V
    .locals 8

    const v6, 0x7f070553

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/miui/antivirus/i;->aDH()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v0, ""

    const-string/jumbo v0, ""

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    move v0, v5

    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const v1, 0x7f070577

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const v1, 0x7f070578

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v6, Lcom/miui/antivirus/ui/h;

    iget-object v7, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/miui/antivirus/ui/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Lcom/miui/antivirus/ui/h;->awC(I)V

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1, p0}, Lcom/miui/antivirus/ui/h;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    invoke-virtual {v6, v1, v0, p0}, Lcom/miui/antivirus/ui/h;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v2}, Lcom/miui/antivirus/ui/h;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/miui/antivirus/ui/h;->setSummary(Ljava/lang/String;)V

    if-ne p1, v4, :cond_2

    move v0, v4

    :goto_2
    invoke-virtual {v6, v0}, Lcom/miui/antivirus/ui/h;->awD(Z)V

    invoke-virtual {v6}, Lcom/miui/antivirus/ui/h;->show()V

    return-void

    :pswitch_0
    const v0, 0x7f07057c

    goto :goto_0

    :pswitch_1
    const v0, 0x7f07057d

    goto :goto_0

    :pswitch_2
    const v0, 0x7f07057e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f07057f

    goto :goto_0

    :pswitch_4
    const v0, 0x7f070580

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const v2, 0x7f07057a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const v3, 0x7f07057b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const v1, 0x7f070552

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x1

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/ui/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/h;->awE()I

    move-result v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "fix"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azR(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/miui/antivirus/ui/h;

    invoke-virtual {p1}, Lcom/miui/antivirus/ui/h;->awF()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDI(Z)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "continue"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azR(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
