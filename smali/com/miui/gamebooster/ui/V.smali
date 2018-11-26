.class final Lcom/miui/gamebooster/ui/V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic do:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/V;->do:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "cancle"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hg(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "not_remind"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gamebooster_netbooster_wifi_open_nomore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/V;->do:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bL(Lcom/miui/gamebooster/ui/c;)V

    return-void
.end method
