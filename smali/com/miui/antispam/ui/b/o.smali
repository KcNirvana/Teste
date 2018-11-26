.class final Lcom/miui/antispam/ui/b/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xs:Lcom/miui/antispam/ui/b/c;

.field final synthetic Xt:Landroid/view/ActionMode;

.field final synthetic Xu:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/c;Landroid/view/ActionMode;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/o;->Xs:Lcom/miui/antispam/ui/b/c;

    iput-object p2, p0, Lcom/miui/antispam/ui/b/o;->Xt:Landroid/view/ActionMode;

    iput-boolean p3, p0, Lcom/miui/antispam/ui/b/o;->Xu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/o;->Xt:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/b/o;->Xu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/o;->Xs:Lcom/miui/antispam/ui/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/b/c;->Wc(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/o;->Xs:Lcom/miui/antispam/ui/b/c;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/c;->VN(Lcom/miui/antispam/ui/b/c;)V

    goto :goto_0
.end method
