.class final Lcom/miui/permcenter/permissions/s;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/s;->PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/permcenter/permissions/b;
    .locals 6

    new-instance v0, Lcom/miui/permcenter/permissions/b;

    invoke-direct {v0}, Lcom/miui/permcenter/permissions/b;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/s;->PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/e;->SK(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/permcenter/permissions/b;->Pa:Z

    iget-object v1, p0, Lcom/miui/permcenter/permissions/s;->PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/s;->PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PV(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/permcenter/e;->SE(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/permissions/m;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/s;->PP:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PV(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/miui/permcenter/permissions/m;-><init>(J)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v1, v0, Lcom/miui/permcenter/permissions/b;->Pb:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/s;->loadInBackground()Lcom/miui/permcenter/permissions/b;

    move-result-object v0

    return-object v0
.end method
