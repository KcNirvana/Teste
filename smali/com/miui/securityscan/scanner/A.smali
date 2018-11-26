.class Lcom/miui/securityscan/scanner/A;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""

# interfaces
.implements Lcom/miui/common/f/b;


# instance fields
.field private DN:Lcom/miui/antivirus/g;

.field private DO:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field private DP:Lcom/miui/common/f/a;

.field private DQ:Lcom/miui/securityscan/c/e;

.field private DR:Ljava/util/Map;

.field private DS:Z

.field private DT:Z

.field private context:Landroid/content/Context;

.field private lock:Ljava/lang/Object;

.field private taskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/securityscan/c/e;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/scanner/A;->taskId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/A;->DQ:Lcom/miui/securityscan/c/e;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/A;->DS:Z

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/A;->init()V

    return-void
.end method

.method private Fu()V
    .locals 3

    iget-object v1, p0, Lcom/miui/securityscan/scanner/A;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/A;->DT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DP:Lcom/miui/common/f/a;

    const-string/jumbo v2, "com.miui.guardprovider.action.antivirusservice"

    invoke-virtual {v0, v2}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/A;->DT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic Fv(Lcom/miui/securityscan/scanner/A;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DO:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object v0
.end method

.method static synthetic Fw(Lcom/miui/securityscan/scanner/A;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DR:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic Fx(Lcom/miui/securityscan/scanner/A;)I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/A;->taskId:I

    return v0
.end method

.method static synthetic Fy(Lcom/miui/securityscan/scanner/A;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/A;->taskId:I

    return p1
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->DN:Lcom/miui/antivirus/g;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->DP:Lcom/miui/common/f/a;

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/A;->DS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/z;->Fq(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->DR:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/z;->Fp(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->DR:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 3

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "GPObserver onScanFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DQ:Lcom/miui/securityscan/c/e;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/c/e;->Gn(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/A;->Fu()V

    return-void
.end method

.method public Fs(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 7

    const-string/jumbo v0, "SystemCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GPObserver onScanProgress total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    array-length v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v2, p3, v0

    const-string/jumbo v0, "SystemCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GPObserver app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DN:Lcom/miui/antivirus/g;

    iget v1, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/g;->aDf(I)Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DR:Ljava/util/Map;

    iget-object v3, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne v1, v3, :cond_1

    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/VirusModel;->arw(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)V

    :goto_0
    iget-object v3, p0, Lcom/miui/securityscan/scanner/A;->DQ:Lcom/miui/securityscan/c/e;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/miui/securityscan/scanner/A;->DR:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v3, v4, v5, v0}, Lcom/miui/securityscan/c/e;->Gp(IILjava/lang/Object;)V

    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v1, :cond_0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "pkgName"

    iget-object v5, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "appName"

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->getAppLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "signature"

    iget-object v5, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/antivirus/utils/n;->avb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "virusName"

    iget-object v5, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->akz:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "level"

    sget-object v5, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne v5, v1, :cond_3

    const-string/jumbo v1, "RISK"

    :goto_1
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appType"

    sget-object v4, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->arr()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v0

    if-ne v4, v0, :cond_4

    const-string/jumbo v0, "INSTALLED_APP"

    :goto_2
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "virusDesc"

    iget-object v1, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->akx:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportSource"

    const-string/jumbo v1, "HOMEPAGE_SCAN"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportEngine"

    iget-object v1, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->aku:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/miui/antivirus/utils/l;->auY(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_3
    return-void

    :cond_1
    :try_start_2
    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/VirusModel;->arw(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemCheckManager"

    const-string/jumbo v2, "GPObserver onScanProgress() InterruptedException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_3
    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DO:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget v1, p0, Lcom/miui/securityscan/scanner/A;->taskId:I

    invoke-interface {v0, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apE(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DQ:Lcom/miui/securityscan/c/e;

    invoke-interface {v0}, Lcom/miui/securityscan/c/e;->Go()V

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/A;->Fu()V

    goto :goto_3

    :cond_2
    :try_start_4
    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/VirusModel;->arw(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_3
    :try_start_5
    const-string/jumbo v1, "VIRUS"

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "UNINSTALLED_APK"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "SystemCheckManager"

    const-string/jumbo v2, "GPObserver onScanProgress() InterruptedException$RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public Ft(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->Ft(I)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/A;->DQ:Lcom/miui/securityscan/c/e;

    invoke-interface {v0}, Lcom/miui/securityscan/c/e;->Gq()V

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "GPObserver onScanStart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/scanner/A;->Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    return-void
.end method

.method public ed(Landroid/os/IBinder;)Z
    .locals 1

    invoke-static {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/A;->DO:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    new-instance v0, Lcom/miui/securityscan/scanner/ac;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/ac;-><init>(Lcom/miui/securityscan/scanner/A;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
