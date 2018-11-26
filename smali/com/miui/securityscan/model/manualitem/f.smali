.class Lcom/miui/securityscan/model/manualitem/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic AC:Lcom/miui/securityscan/model/manualitem/PackageVerifyFailedModel;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/PackageVerifyFailedModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/f;->AC:Lcom/miui/securityscan/model/manualitem/PackageVerifyFailedModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/f;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/e;->aHA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/c;->aHr(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/f;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
