.class public Lcom/miui/antivirus/utils/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antivirus/utils/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/utils/k;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/utils/k;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public auX(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/guardprovider/WifiDetectObserver;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "TENCENT"

    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apQ(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    const-string/jumbo v0, "TENCENT"

    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apR(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    const-string/jumbo v0, "TENCENT"

    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apP(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    const-string/jumbo v0, "TENCENT"

    const-string/jumbo v1, "mdetector"

    invoke-interface {p1, v0, p2, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apO(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/antivirus/utils/k;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error when start wifi detect !"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
