.class final Lcom/miui/powercenter/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aPz:Lcom/miui/powercenter/PowerCenter;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/miui/powercenter/model/b;

    invoke-direct {v0}, Lcom/miui/powercenter/model/b;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v2}, Lcom/miui/powercenter/PowerCenter;->bgc(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    move-result-object v2

    sget-object v3, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPk:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v2}, Lcom/miui/powercenter/PowerCenter;->bgd(Lcom/miui/powercenter/PowerCenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v2}, Lcom/miui/powercenter/PowerCenter;->bfY(Lcom/miui/powercenter/PowerCenter;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-virtual {v2}, Lcom/miui/powercenter/PowerCenter;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v2}, Lcom/miui/powercenter/PowerCenter;->bgd(Lcom/miui/powercenter/PowerCenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgd(Lcom/miui/powercenter/PowerCenter;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/model/b;

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/miui/powercenter/model/c;

    if-eqz v1, :cond_4

    const/16 v1, 0x419

    :goto_1
    iput v1, v3, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v1}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/powercenter/c;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    :cond_3
    :try_start_0
    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {v0}, Lcom/miui/powercenter/model/b;->aUg()Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    move-result-object v3

    if-ne v2, v3, :cond_5

    const-wide/16 v2, 0x50

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

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

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgc(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPj:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x41b

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/powercenter/j;->aPz:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v1}, Lcom/miui/powercenter/PowerCenter;->bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/c;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    return-void
.end method
