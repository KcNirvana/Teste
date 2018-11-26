.class final Lcom/miui/antivirus/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awV:Lcom/miui/antivirus/x;

.field final synthetic awW:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field final synthetic awX:Lcom/miui/antivirus/model/VirusModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/x;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/model/VirusModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/y;->awV:Lcom/miui/antivirus/x;

    iput-object p2, p0, Lcom/miui/antivirus/y;->awW:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iput-object p3, p0, Lcom/miui/antivirus/y;->awX:Lcom/miui/antivirus/model/VirusModel;

    iput-object p4, p0, Lcom/miui/antivirus/y;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/y;->awW:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antivirus/y;->awX:Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/antivirus/m;

    iget-object v3, p0, Lcom/miui/antivirus/y;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/antivirus/y;->awX:Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {v2, v3, v4}, Lcom/miui/antivirus/m;-><init>(Landroid/content/Context;Lcom/miui/antivirus/model/VirusModel;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apM([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
