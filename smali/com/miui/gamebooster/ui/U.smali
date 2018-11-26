.class final Lcom/miui/gamebooster/ui/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dn:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/U;->dn:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hc(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "not_remind"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hc(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gamebooster_netbooster_open_nomore"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tX(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/U;->dn:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bt(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;->qI:Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->Y(Lcom/miui/gamebooster/constants/EnumCollection$NetBoosterStatus;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/U;->dn:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/U;->dn:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->aZ(Lcom/miui/gamebooster/ui/c;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/c;->aJ(Ljava/lang/Boolean;)V

    return-void
.end method
