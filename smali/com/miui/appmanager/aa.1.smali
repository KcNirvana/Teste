.class final Lcom/miui/appmanager/aa;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source ""


# instance fields
.field final synthetic aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blr(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v6, v0, v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blE(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blD(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0, v4, v5}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blC(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blr(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bln(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blF(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blx(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lcom/miui/appmanager/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/g;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/miui/appmanager/aa;->aWF:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bln(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    goto :goto_0
.end method
