.class final Lcom/miui/gamebooster/service/H;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic nl:Lcom/miui/gamebooster/service/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/H;->nl:Lcom/miui/gamebooster/service/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/H;->nl:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pJ(Lcom/miui/gamebooster/service/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/H;->nl:Lcom/miui/gamebooster/service/d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/d;->pL(Lcom/miui/gamebooster/service/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
