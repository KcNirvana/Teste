.class final Lcom/miui/gamebooster/ui/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dU:Lcom/miui/gamebooster/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const v3, 0x7f07097e

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    if-ne p2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tY(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cj(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v2

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    const v1, 0x7f070980

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    if-ne p2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tZ(Z)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    const v2, 0x7f07097f

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/i;->cj(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v2

    if-ne p2, v1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/av;->dU:Lcom/miui/gamebooster/ui/i;

    const v2, 0x7f070981

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
