.class Lcom/miui/firstaidkit/model/operation/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic tP:Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/operation/a;->tP:Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/firstaidkit/model/operation/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10

    const-wide/32 v8, 0x2000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/operation/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/miui/permcenter/e;->SE(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/model/operation/a;->tP:Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;->-set0(Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;I)I

    iget-object v0, p0, Lcom/miui/firstaidkit/model/operation/a;->tP:Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;->-get0(Lcom/miui/firstaidkit/model/operation/SuspensionWindowModel;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/a;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
