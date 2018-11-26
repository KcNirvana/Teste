.class final Lcom/miui/permcenter/install/n;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic QI:Lcom/miui/permcenter/install/AdbInstallActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0xa

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RN(Lcom/miui/permcenter/install/AdbInstallActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RM(Lcom/miui/permcenter/install/AdbInstallActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->RO(Lcom/miui/permcenter/install/AdbInstallActivity;I)I

    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RM(Lcom/miui/permcenter/install/AdbInstallActivity;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RP(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RN(Lcom/miui/permcenter/install/AdbInstallActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/miui/permcenter/install/n;->QI:Lcom/miui/permcenter/install/AdbInstallActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->RQ(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
