.class public Lcom/miui/gamebooster/gbservices/n;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private pZ:Lcom/miui/gamebooster/service/d;

.field private qa:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/n;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/n;->pZ:Lcom/miui/gamebooster/service/d;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/n;->qa:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsForbidAutoBright...stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/n;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/q;->gj(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/n;->qa:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsForbidAutoBright...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/n;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/q;->gj(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uf(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/n;->qa:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/n;->qa:Z

    return-void
.end method
