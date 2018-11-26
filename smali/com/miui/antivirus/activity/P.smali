.class final Lcom/miui/antivirus/activity/P;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field final synthetic atz:Lcom/miui/antivirus/activity/O;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/O;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public apX(I)V
    .locals 3

    const-string/jumbo v0, "SettingsActivity"

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

    iget-object v0, p0, Lcom/miui/antivirus/activity/P;->atz:Lcom/miui/antivirus/activity/O;

    iget-object v0, v0, Lcom/miui/antivirus/activity/O;->aty:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayP(Lcom/miui/antivirus/activity/SettingsActivity;)Lcom/miui/guardprovider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    return-void
.end method

.method public apY(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 2

    const-string/jumbo v0, "MiEngine"

    iget-object v1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/antivirus/activity/Q;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/Q;-><init>(Lcom/miui/antivirus/activity/P;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
