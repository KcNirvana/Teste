.class final Lcom/miui/antivirus/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic awR:Lcom/miui/antivirus/k;

.field final synthetic awS:Lcom/miui/guardprovider/VirusObserver;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/k;Lcom/miui/guardprovider/VirusObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/v;->awR:Lcom/miui/antivirus/k;

    iput-object p2, p0, Lcom/miui/antivirus/v;->awS:Lcom/miui/guardprovider/VirusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/v;->awS:Lcom/miui/guardprovider/VirusObserver;

    invoke-interface {p1, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apN(Lcom/miui/guardprovider/aidl/IVirusObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
