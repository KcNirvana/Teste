.class public Lcom/miui/antispam/ui/b/i;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic Xk:Lcom/miui/antispam/ui/b/g;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/ui/b/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/i;->Xk:Lcom/miui/antispam/ui/b/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/i;->Xk:Lcom/miui/antispam/ui/b/g;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/g;->Wd(Lcom/miui/antispam/ui/b/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/i;->Xk:Lcom/miui/antispam/ui/b/g;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/g;->Wd(Lcom/miui/antispam/ui/b/g;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
