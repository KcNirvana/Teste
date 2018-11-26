.class final Lcom/miui/antivirus/service/d;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field final synthetic avg:Lcom/miui/antivirus/service/a;

.field final synthetic avh:Lcom/miui/guardprovider/a;

.field final synthetic avi:Lcom/miui/antivirus/k;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/a;Lcom/miui/guardprovider/a;Lcom/miui/antivirus/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/d;->avg:Lcom/miui/antivirus/service/a;

    iput-object p2, p0, Lcom/miui/antivirus/service/d;->avh:Lcom/miui/guardprovider/a;

    iput-object p3, p0, Lcom/miui/antivirus/service/d;->avi:Lcom/miui/antivirus/k;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public apX(I)V
    .locals 3

    const-string/jumbo v0, "VirusAutoUpdateJobService"

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

    iget-object v0, p0, Lcom/miui/antivirus/service/d;->avg:Lcom/miui/antivirus/service/a;

    invoke-static {v0}, Lcom/miui/antivirus/service/a;->aBg(Lcom/miui/antivirus/service/a;)Lcom/miui/antivirus/service/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/service/b;->aBh()V

    iget-object v0, p0, Lcom/miui/antivirus/service/d;->avh:Lcom/miui/guardprovider/a;

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    return-void
.end method

.method public apY(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 3

    const-string/jumbo v0, "MiEngine"

    iget-object v1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/service/d;->avg:Lcom/miui/antivirus/service/a;

    iget-object v0, v0, Lcom/miui/antivirus/service/a;->auN:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-static {v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->aBf(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/e;

    iget-object v2, p0, Lcom/miui/antivirus/service/d;->avi:Lcom/miui/antivirus/k;

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/antivirus/service/e;-><init>(Lcom/miui/antivirus/service/d;Lcom/miui/guardprovider/aidl/UpdateInfo;Lcom/miui/antivirus/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
