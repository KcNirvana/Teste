.class final Lcom/miui/permcenter/permissions/n;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic PC:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/n;->PC:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/permcenter/permissions/a;
    .locals 10

    const/4 v5, 0x0

    new-instance v2, Lcom/miui/permcenter/permissions/a;

    invoke-direct {v2}, Lcom/miui/permcenter/permissions/a;-><init>()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/n;->PC:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/e;->SK(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/miui/permcenter/permissions/a;->OY:Z

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/n;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/n;->PC:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->PQ(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/permcenter/e;->SI(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/miui/permcenter/permissions/a;->OZ:Ljava/util/HashMap;

    iput-object v3, v2, Lcom/miui/permcenter/permissions/a;->OX:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/permcenter/permissions/n;->PC:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/miui/permission/a;->bBN(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v5}, Lcom/miui/permission/a;->bBW(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionGroupInfo;

    new-instance v7, Lcom/miui/permcenter/permissions/i;

    invoke-direct {v7}, Lcom/miui/permcenter/permissions/i;-><init>()V

    iput-object v0, v7, Lcom/miui/permcenter/permissions/i;->Pv:Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v0}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getGroup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/i;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/i;

    iget-object v5, v0, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/i;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/n;->loadInBackground()Lcom/miui/permcenter/permissions/a;

    move-result-object v0

    return-object v0
.end method
