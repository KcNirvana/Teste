.class final Lcom/miui/gamebooster/ui/aw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dV:Lcom/miui/gamebooster/ui/i;

.field final synthetic dW:Ljava/lang/String;

.field final synthetic dX:Ljava/lang/String;

.field final synthetic dY:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/aw;->dW:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/aw;->dX:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gamebooster/ui/aw;->dY:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    const-string/jumbo v0, "float"

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cv(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aw;->dW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    const-string/jumbo v0, "gesture"

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cv(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aw;->dX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    const-string/jumbo v0, "close"

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aw;->dV:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cv(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/aw;->dY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
