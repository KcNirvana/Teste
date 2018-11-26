.class final Lcom/miui/antivirus/activity/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asX:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lcom/miui/antivirus/model/g;

    invoke-direct {v0}, Lcom/miui/antivirus/model/g;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axN(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    move-result-object v2

    sget-object v3, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arW:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axL(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axC(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v2}, Lcom/miui/antivirus/activity/MainActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v2}, Lcom/miui/antivirus/activity/MainActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axL(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axL(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/g;

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/miui/antivirus/model/a;

    if-eqz v1, :cond_4

    const/16 v1, 0x419

    :goto_1
    iput v1, v3, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/activity/c;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    :cond_3
    :try_start_0
    sget-object v2, Lcom/miui/antivirus/model/AbsModel$ItemGroup;->alS:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/g;->arE()Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    move-result-object v3

    if-ne v2, v3, :cond_5

    const-wide/16 v2, 0x50

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "AntiVirusMainActivity"

    const-string/jumbo v4, "InterruptedException when do animation :"

    invoke-static {v3, v4, v2}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x41a

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axN(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x41b

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/antivirus/activity/s;->asX:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/activity/c;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    return-void
.end method
