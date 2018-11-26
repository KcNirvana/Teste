.class final Lcom/miui/antispam/policy/PolicyUtils/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic YG:Lcom/miui/antispam/policy/PolicyUtils/d;


# direct methods
.method constructor <init>(Lcom/miui/antispam/policy/PolicyUtils/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/policy/PolicyUtils/f;->YG:Lcom/miui/antispam/policy/PolicyUtils/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on GPService Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/f;->YG:Lcom/miui/antispam/policy/PolicyUtils/d;

    invoke-static {p2}, Lcom/miui/guardprovider/aidl/IURLScanServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xg(Lcom/miui/antispam/policy/PolicyUtils/d;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/f;->YG:Lcom/miui/antispam/policy/PolicyUtils/d;

    invoke-static {v0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xf(Lcom/miui/antispam/policy/PolicyUtils/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on GPService DisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/f;->YG:Lcom/miui/antispam/policy/PolicyUtils/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xg(Lcom/miui/antispam/policy/PolicyUtils/d;Lcom/miui/guardprovider/aidl/IURLScanServer;)Lcom/miui/guardprovider/aidl/IURLScanServer;

    return-void
.end method
