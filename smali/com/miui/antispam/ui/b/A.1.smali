.class final Lcom/miui/antispam/ui/b/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XG:Lcom/miui/antispam/ui/b/j;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/A;->XG:Lcom/miui/antispam/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/a;->brO(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/A;->XG:Lcom/miui/antispam/ui/b/j;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/b/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/A;->XG:Lcom/miui/antispam/ui/b/j;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/b/j;->Wh()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/A;->XG:Lcom/miui/antispam/ui/b/j;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/j;->Wo(Lcom/miui/antispam/ui/b/j;)V

    goto :goto_0
.end method
