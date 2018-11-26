.class final Lcom/miui/permcenter/permissions/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic PI:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

.field final synthetic PJ:Z


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/p;->PI:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/p;->PJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/p;->PI:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/p;->PJ:Z

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PW(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)V

    return-void
.end method
