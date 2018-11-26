.class final Lcom/miui/antispam/ui/b/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Xn:Lcom/miui/antispam/ui/b/b;

.field final synthetic Xo:Landroid/view/ActionMode;

.field final synthetic Xp:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/b;Landroid/view/ActionMode;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/l;->Xn:Lcom/miui/antispam/ui/b/b;

    iput-object p2, p0, Lcom/miui/antispam/ui/b/l;->Xo:Landroid/view/ActionMode;

    iput-boolean p3, p0, Lcom/miui/antispam/ui/b/l;->Xp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/l;->Xo:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/b/l;->Xp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/l;->Xn:Lcom/miui/antispam/ui/b/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/b/b;->Wc(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/l;->Xn:Lcom/miui/antispam/ui/b/b;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/b;->VI(Lcom/miui/antispam/ui/b/b;)V

    goto :goto_0
.end method
