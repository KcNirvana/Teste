.class final Lcom/miui/antivirus/activity/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic att:Lcom/miui/antivirus/activity/SettingsActivity;

.field final synthetic atu:Ljava/util/List;

.field final synthetic atv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/L;->att:Lcom/miui/antivirus/activity/SettingsActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/L;->atu:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/antivirus/activity/L;->atv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/L;->atu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/L;->atu:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/h;

    iget-object v2, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/activity/L;->atv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apL(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SettingsActivity"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/miui/antivirus/h;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apL(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
