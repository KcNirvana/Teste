.class final Lcom/miui/antivirus/o;
.super Lcom/miui/guardprovider/VirusObserver;
.source ""


# instance fields
.field final synthetic awI:Lcom/miui/antivirus/a;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/o;->akE:Lcom/miui/antivirus/c;

    invoke-interface {v0}, Lcom/miui/antivirus/c;->aBH()V

    return-void
.end method

.method public Fs(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v0, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    iget v2, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aky:I

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/a;->aCb(I)Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    move-result-object v0

    sget-object v2, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avY:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/antivirus/o;->akE:Lcom/miui/antivirus/c;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/miui/antivirus/c;->aBE(I)V

    const-string/jumbo v2, "PaySafetyCheckManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "background scan : virus risk = "

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

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "pkgName"

    iget-object v6, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "appName"

    iget-object v6, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    invoke-static {v6}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    invoke-static {v7}, Lcom/miui/antivirus/a;->aCR(Lcom/miui/antivirus/a;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "signature"

    iget-object v6, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    invoke-static {v6}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/antivirus/utils/n;->avc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "virusName"

    iget-object v6, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akz:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "level"

    sget-object v6, Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;->avX:Lcom/miui/antivirus/PaySafetyCheckManager$ScanResultType;

    if-ne v6, v0, :cond_1

    const-string/jumbo v0, "RISK"

    :goto_0
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "appType"

    const-string/jumbo v5, "INSTALLED_APP"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "virusDesc"

    iget-object v5, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->akx:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportSource"

    const-string/jumbo v5, "SECURITY_SCAN_BACKGROUND"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "reportEngine"

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/VirusInfo;->aku:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/antivirus/o;->awI:Lcom/miui/antivirus/a;

    invoke-static {v0}, Lcom/miui/antivirus/a;->aCP(Lcom/miui/antivirus/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/antivirus/utils/l;->auY(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "VIRUS"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
