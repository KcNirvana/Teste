.class final Lcom/miui/antivirus/activity/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asK:Lcom/miui/antivirus/activity/i;

.field final synthetic asL:Lcom/miui/guardprovider/aidl/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/i;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iput-object p2, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v0, 0x7f07072b

    const-string/jumbo v1, "AntiVirusMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v3, v3, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v3, v3, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v1, v1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axD(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v0, v0, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v0, v0, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axM(Lcom/miui/antivirus/activity/MainActivity;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axS(Lcom/miui/antivirus/activity/MainActivity;Lmiui/app/ProgressDialog;)V

    return-void

    :pswitch_1
    const v0, 0x7f07072a

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v4, v4, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/antivirus/k;->aEj(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/k;->aEk(J)V

    const-string/jumbo v1, "success"

    invoke-static {v1}, Lcom/miui/antivirus/a/d;->azx(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f07072c

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/antivirus/activity/j;->asL:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v4, v4, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/antivirus/k;->aEj(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/j;->asK:Lcom/miui/antivirus/activity/i;

    iget-object v1, v1, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v1, v1, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axA(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/k;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/k;->aEk(J)V

    const-string/jumbo v1, "success"

    invoke-static {v1}, Lcom/miui/antivirus/a/d;->azx(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v1, "fail"

    invoke-static {v1}, Lcom/miui/antivirus/a/d;->azx(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
