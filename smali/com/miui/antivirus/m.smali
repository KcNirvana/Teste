.class Lcom/miui/antivirus/m;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field private awF:Lcom/miui/antivirus/g;

.field private awG:Lcom/miui/antivirus/model/VirusModel;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antivirus/model/VirusModel;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/m;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/m;->awF:Lcom/miui/antivirus/g;

    return-void
.end method

.method static synthetic aEv(Lcom/miui/antivirus/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/m;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aEw(Lcom/miui/antivirus/m;)Lcom/miui/antivirus/model/VirusModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    return-object v0
.end method


# virtual methods
.method public Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/guardprovider/VirusObserver;->Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    iget-object v0, p0, Lcom/miui/antivirus/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/guardprovider/a;->getInstance(Landroid/content/Context;)Lcom/miui/guardprovider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/guardprovider/a;->aqh()V

    return-void
.end method

.method public Fs(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v0, p0, Lcom/miui/antivirus/m;->awF:Lcom/miui/antivirus/g;

    iget v2, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/g;->aDf(I)Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v0

    sget-object v2, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    iget-object v3, p0, Lcom/miui/antivirus/m;->awF:Lcom/miui/antivirus/g;

    iget v4, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/g;->aDf(I)Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->arw(Lcom/miui/antivirus/AntiVirusManager$ScanResultType;)V

    iget-object v2, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->ary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->arz(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    iget v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->aru(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/antivirus/w;

    invoke-direct {v3, p0}, Lcom/miui/antivirus/w;-><init>(Lcom/miui/antivirus/m;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/miui/antivirus/l;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onScanProgress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/guardprovider/aidl/VirusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "pkgName"

    iget-object v4, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appName"

    iget-object v4, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/VirusModel;->getAppLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "signature"

    iget-object v4, p0, Lcom/miui/antivirus/m;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v5}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/antivirus/utils/n;->avb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "virusName"

    iget-object v4, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akz:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    sget-object v4, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-ne v4, v0, :cond_1

    const-string/jumbo v0, "RISK"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appType"

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    iget-object v4, p0, Lcom/miui/antivirus/m;->awG:Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/VirusModel;->arr()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v4

    if-ne v0, v4, :cond_2

    const-string/jumbo v0, "INSTALLED_APP"

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "virusDesc"

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akx:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportSource"

    const-string/jumbo v3, "INSTALL_MONITOR"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportEngine"

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aku:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/antivirus/m;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/antivirus/utils/l;->auY(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, "VIRUS"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "UNINSTALLED_APK"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public Ft(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->Ft(I)V

    return-void
.end method

.method public apV(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/guardprovider/VirusObserver;->apV(ILjava/lang/String;)V

    return-void
.end method
