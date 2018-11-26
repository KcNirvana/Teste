.class Lcom/miui/securityscan/model/manualitem/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic Ar:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/a;->Ar:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/a;->Ar:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    invoke-static {v0, v2}, Lcom/miui/securityscan/model/manualitem/DataPackageModel;->Br(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Z)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/c;->aHi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/c;->aHj(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/common/b/c;->aHk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/a;->Ar:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/DataPackageModel;->Br(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Z)Z

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/a;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
