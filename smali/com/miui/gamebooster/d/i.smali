.class final Lcom/miui/gamebooster/d/i;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic sQ:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/i;->sQ:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/d/i;->sQ:Lcom/miui/gamebooster/d/b;

    invoke-static {v0}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gamebox_stick"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/i;->sQ:Lcom/miui/gamebooster/d/b;

    invoke-static {v1}, Lcom/miui/gamebooster/d/b;->uR(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/d/i;->sQ:Lcom/miui/gamebooster/d/b;

    invoke-static {v1}, Lcom/miui/gamebooster/d/b;->uR(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/b/e;->to(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
