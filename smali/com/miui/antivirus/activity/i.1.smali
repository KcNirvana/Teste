.class final Lcom/miui/antivirus/activity/i;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field final synthetic asJ:Lcom/miui/antivirus/activity/f;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public apX(I)V
    .locals 3

    const-string/jumbo v0, "AntiVirusMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v0, v0, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axE(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/guardprovider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    return-void
.end method

.method public apY(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 4

    const-string/jumbo v0, "MiEngine"

    iget-object v1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/i;->asJ:Lcom/miui/antivirus/activity/f;

    iget-object v0, v0, Lcom/miui/antivirus/activity/f;->asc:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/j;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/j;-><init>(Lcom/miui/antivirus/activity/i;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/antivirus/activity/c;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
