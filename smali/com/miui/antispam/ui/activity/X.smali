.class final Lcom/miui/antispam/ui/activity/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Vl:Lcom/miui/antispam/ui/activity/k;

.field final synthetic Vm:Landroid/view/ActionMode;

.field final synthetic Vn:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;Landroid/view/ActionMode;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/X;->Vl:Lcom/miui/antispam/ui/activity/k;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/X;->Vm:Landroid/view/ActionMode;

    iput-boolean p3, p0, Lcom/miui/antispam/ui/activity/X;->Vn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/X;->Vm:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/X;->Vl:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/k;->Uw()V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/X;->Vn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/X;->Vl:Lcom/miui/antispam/ui/activity/k;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/k;->UD(Lcom/miui/antispam/ui/activity/k;)V

    :cond_0
    return-void
.end method
