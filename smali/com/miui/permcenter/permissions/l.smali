.class Lcom/miui/permcenter/permissions/l;
.super Lcom/miui/common/d/e;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/permcenter/permissions/j;
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x212

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/miui/permission/a;->bBW(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/permission/a;->bBN(I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionGroupInfo;

    new-instance v7, Lcom/miui/permcenter/permissions/i;

    invoke-direct {v7}, Lcom/miui/permcenter/permissions/i;-><init>()V

    iput-object v0, v7, Lcom/miui/permcenter/permissions/i;->Pv:Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v0}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v0

    if-eq v0, v9, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/e;->SQ(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/e;->SR(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/miui/permission/PermissionInfo;->getGroup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/i;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/miui/permcenter/permissions/j;

    invoke-direct {v0}, Lcom/miui/permcenter/permissions/j;-><init>()V

    iput-object v3, v0, Lcom/miui/permcenter/permissions/j;->Py:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/miui/permcenter/permissions/j;->Pz:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/miui/permcenter/permissions/j;->Px:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/l;->loadInBackground()Lcom/miui/permcenter/permissions/j;

    move-result-object v0

    return-object v0
.end method
