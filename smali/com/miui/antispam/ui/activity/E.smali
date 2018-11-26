.class final Lcom/miui/antispam/ui/activity/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Uw:Lcom/miui/antispam/ui/activity/g;

.field final synthetic Ux:Landroid/view/ActionMode;

.field final synthetic Uy:[J

.field final synthetic Uz:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/g;Landroid/view/ActionMode;[JLandroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/E;->Uw:Lcom/miui/antispam/ui/activity/g;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/E;->Ux:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/E;->Uy:[J

    iput-object p4, p0, Lcom/miui/antispam/ui/activity/E;->Uz:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/E;->Ux:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/E;->Uw:Lcom/miui/antispam/ui/activity/g;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/E;->Uy:[J

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/E;->Uz:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/ui/activity/g;->TP(Lcom/miui/antispam/ui/activity/g;[JLandroid/util/SparseBooleanArray;)V

    return-void
.end method
