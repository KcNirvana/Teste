.class final Lcom/miui/antivirus/n;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field final synthetic awH:Lcom/miui/antivirus/a;

.field private startTime:J


# direct methods
.method constructor <init>(Lcom/miui/antivirus/a;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/n;->startTime:J

    return-void
.end method


# virtual methods
.method public Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v1, "virus scan finished ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCT(Lcom/miui/antivirus/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCS(Lcom/miui/antivirus/a;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/antivirus/a;->aCU(Lcom/miui/antivirus/a;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lcom/miui/antivirus/n;->akD:Lcom/miui/antivirus/b;

    invoke-interface {v0}, Lcom/miui/antivirus/b;->ayy()V

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/antivirus/n;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/antivirus/a;->aCW(Lcom/miui/antivirus/a;J)J

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCQ(Lcom/miui/antivirus/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v2}, Lcom/miui/antivirus/a;->aCQ(Lcom/miui/antivirus/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PaySafetyCheckManager"

    const-string/jumbo v2, "signature scan first finished , now virus scan finished !"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/n;->akD:Lcom/miui/antivirus/b;

    invoke-interface {v0}, Lcom/miui/antivirus/b;->ayw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public Fs(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    iget v2, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/a;->aCb(I)Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/antivirus/a;->aCX(Lcom/miui/antivirus/a;Ljava/lang/String;)Lcom/miui/antivirus/model/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/b;->aqC(Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;)V

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqD(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqE(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqz(Lcom/miui/antivirus/model/AppModel$CardType;)V

    sget-object v3, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/b;->aqA(Lcom/miui/antivirus/model/AppModel$AppGroup;)V

    iget-object v3, p0, Lcom/miui/antivirus/n;->akD:Lcom/miui/antivirus/b;

    invoke-interface {v3, v2}, Lcom/miui/antivirus/b;->ayt(Lcom/miui/antivirus/model/b;)V

    sget-object v3, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avY:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-eq v3, v0, :cond_0

    const-string/jumbo v0, "PaySafetyCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "foreground scan : virus risk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; virusLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "appName"

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "signature"

    iget-object v4, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v4}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->aqF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/antivirus/utils/n;->avb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "virusName"

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->aqG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "level"

    sget-object v0, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avX:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->aqH()Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v5

    if-ne v0, v5, :cond_1

    const-string/jumbo v0, "RISK"

    :goto_0
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "virusDesc"

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->aqI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "appType"

    sget-object v0, Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;->awc:Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/b;->aqJ()Lcom/miui/antivirus/PaySafetyCheckManager$ScanItemType;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "INSTALLED_APP"

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportSource"

    const-string/jumbo v2, "SECURITY_SCAN_FOREGROUND"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportEngine"

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aku:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/antivirus/n;->awH:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/antivirus/utils/l;->auY(Landroid/content/Context;Lorg/json/JSONObject;)V

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
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antivirus/n;->startTime:J

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/antivirus/n;->Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    return-void
.end method
