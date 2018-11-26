.class final Lcom/miui/gamebooster/ui/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dC:Lcom/miui/gamebooster/ui/c;

.field final synthetic dD:Z


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/af;->dC:Lcom/miui/gamebooster/ui/c;

    iput-boolean p2, p0, Lcom/miui/gamebooster/ui/af;->dD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/af;->dD:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "not_remind"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->ha(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "gamebooster_free_send_netbooster_open_nomore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/af;->dC:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->ar()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/af;->dD:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->ha(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "click"

    const-string/jumbo v1, "not_remind"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "click"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
