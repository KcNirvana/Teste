.class final Lcom/miui/powercenter/quickoptimize/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/powercenter/quickoptimize/n;


# instance fields
.field final synthetic aFp:Landroid/content/Context;

.field final synthetic aFq:Lcom/miui/powercenter/quickoptimize/r;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/R;->aFp:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/R;->aFq:Lcom/miui/powercenter/quickoptimize/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aOj(Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/R;->aFp:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/q;->aQC(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/q;->-wrap0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/R;->aFq:Lcom/miui/powercenter/quickoptimize/r;

    invoke-interface {v0, v4}, Lcom/miui/powercenter/quickoptimize/r;->aOk(Ljava/util/List;)V

    return-void
.end method
