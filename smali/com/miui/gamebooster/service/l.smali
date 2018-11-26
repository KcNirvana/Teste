.class final Lcom/miui/gamebooster/service/l;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic mI:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/l;->mI:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gamebooster/service/l;->mI:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v2, p0, Lcom/miui/gamebooster/service/l;->mI:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gb_videobox"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nW(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
