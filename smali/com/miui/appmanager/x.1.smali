.class final Lcom/miui/appmanager/x;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source ""


# instance fields
.field final synthetic aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

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

    iget-object v6, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjI(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v6, v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkv(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bku(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0, v4, v5}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkt(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjI(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjF(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkI(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjX(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/d;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/miui/appmanager/x;->aWa:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v6}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjF(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    goto :goto_0
.end method
