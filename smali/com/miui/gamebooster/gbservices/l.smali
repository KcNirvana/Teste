.class public Lcom/miui/gamebooster/gbservices/l;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private pT:Lcom/miui/gamebooster/service/d;

.field private pU:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/l;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/l;->pT:Lcom/miui/gamebooster/service/d;

    return-void
.end method

.method private sS()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method private sT(Z)V
    .locals 0

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method private sU(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/l;->sS()Z

    move-result v0

    const-string/jumbo v1, "gb_function_user_auto_sync"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/gbservices/l;->sT(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/l;->sS()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gb_function_user_auto_sync"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/l;->sT(Z)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/l;->pU:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAutoSync...stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/l;->sU(Z)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/l;->pU:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "mIsAutoSync...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gbservices/l;->sU(Z)V

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

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tP(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/l;->pU:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/l;->pU:Z

    return-void
.end method
