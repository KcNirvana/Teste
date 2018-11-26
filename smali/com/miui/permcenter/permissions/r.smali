.class final Lcom/miui/permcenter/permissions/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/permcenter/f;


# instance fields
.field final synthetic PN:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

.field final synthetic PO:Lcom/miui/permcenter/c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Lcom/miui/permcenter/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/r;->PN:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/r;->PO:Lcom/miui/permcenter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PP(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/r;->PO:Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/r;->PN:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PV(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/r;->PN:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PU(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lcom/miui/permcenter/permissions/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/d;->notifyDataSetChanged()V

    return-void
.end method
