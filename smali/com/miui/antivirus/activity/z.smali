.class final Lcom/miui/antivirus/activity/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic atf:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/z;->atf:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/z;->atf:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/z;->atf:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/MainActivity;->axz(Lcom/miui/antivirus/activity/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/z;->atf:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axI(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/b;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/antivirus/a;->aBN(Lcom/miui/guardprovider/aidl/IAntiVirusServer;ILcom/miui/antivirus/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
