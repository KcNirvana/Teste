.class final Lcom/miui/securityscan/scanner/M;
.super Lcom/miui/securityscan/scanner/CacheCheckManager$CacheScanCallbackAdapter;
.source ""


# instance fields
.field EO:Ljava/util/Map;

.field final synthetic EP:Lcom/miui/securityscan/scanner/j;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/CacheCheckManager$CacheScanCallbackAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/M;->EO:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public EU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 4

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/M;->EO:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;-><init>()V

    invoke-virtual {v0, p3}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->setChecked(Z)V

    invoke-virtual {v0, p4, p5}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpy(J)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/j;->El(Lcom/miui/securityscan/scanner/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpw(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Gm(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/M;->EO:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cacheType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dirPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pkgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adviseDel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpv()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpy(J)V

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Gm(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EV()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanCacheItem =============> onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/N;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/N;-><init>(Lcom/miui/securityscan/scanner/M;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    return-void
.end method

.method public EX()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanCacheItem -------------> onStartScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
