.class final Lcom/miui/permcenter/root/e;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic OU:Lcom/miui/permcenter/root/RootManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/root/RootManagementActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/e;->OU:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/root/e;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 10

    const-wide/16 v6, 0x200

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/root/e;->OU:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/root/RootManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/miui/permcenter/e;->SE(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/d;

    invoke-direct {v1}, Lcom/miui/permcenter/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/permcenter/root/d;

    invoke-direct {v1}, Lcom/miui/permcenter/root/d;-><init>()V

    sget-object v4, Lcom/miui/permcenter/root/RootHeaderType;->OI:Lcom/miui/permcenter/root/RootHeaderType;

    invoke-virtual {v1, v4}, Lcom/miui/permcenter/root/d;->PC(Lcom/miui/permcenter/root/RootHeaderType;)V

    iget-object v4, p0, Lcom/miui/permcenter/root/e;->OU:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-virtual {v4}, Lcom/miui/permcenter/root/RootManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0c0036

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/permcenter/root/d;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/root/d;->PD(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/miui/permcenter/root/d;

    invoke-direct {v1}, Lcom/miui/permcenter/root/d;-><init>()V

    sget-object v2, Lcom/miui/permcenter/root/RootHeaderType;->OJ:Lcom/miui/permcenter/root/RootHeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/root/d;->PC(Lcom/miui/permcenter/root/RootHeaderType;)V

    iget-object v2, p0, Lcom/miui/permcenter/root/e;->OU:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-virtual {v2}, Lcom/miui/permcenter/root/RootManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0c0037

    invoke-virtual {v2, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/root/d;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/miui/permcenter/root/d;->PD(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method
