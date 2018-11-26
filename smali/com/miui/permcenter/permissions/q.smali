.class final Lcom/miui/permcenter/permissions/q;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic PK:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

.field final synthetic PL:Ljava/util/ArrayList;

.field final synthetic PM:Z


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/q;->PK:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/q;->PL:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/miui/permcenter/permissions/q;->PM:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/q;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/q;->PL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/q;->PM:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/q;->PK:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/q;->PK:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->PV(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/a;->bBV(JII[Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v4, v5

    goto :goto_0
.end method
