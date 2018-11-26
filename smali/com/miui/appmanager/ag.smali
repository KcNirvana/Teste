.class final Lcom/miui/appmanager/ag;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source ""


# instance fields
.field final synthetic aWM:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ag;->aWM:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/appmanager/ag;->aWM:Lcom/miui/appmanager/AppManagerMainActivity;

    iget v3, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v4, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpb(Lcom/miui/appmanager/AppManagerMainActivity;ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
