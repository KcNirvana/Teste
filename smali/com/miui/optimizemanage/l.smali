.class final Lcom/miui/optimizemanage/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/optimizemanage/memoryclean/f;


# instance fields
.field final synthetic Am:Lcom/miui/optimizemanage/d;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xy()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v1}, Lcom/miui/optimizemanage/d;->Bm(Lcom/miui/optimizemanage/d;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/m;

    instance-of v4, v0, Lcom/miui/optimizemanage/optimizeresult/h;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/h;

    iget-object v1, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/h;->yr(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bl(Lcom/miui/optimizemanage/d;)Lcom/miui/optimizemanage/optimizeresult/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->notifyDataSetChanged()V

    :goto_1
    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bm(Lcom/miui/optimizemanage/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bm(Lcom/miui/optimizemanage/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bl(Lcom/miui/optimizemanage/d;)Lcom/miui/optimizemanage/optimizeresult/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->clear()V

    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bl(Lcom/miui/optimizemanage/d;)Lcom/miui/optimizemanage/optimizeresult/q;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/optimizemanage/optimizeresult/q;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/l;->Am:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bl(Lcom/miui/optimizemanage/d;)Lcom/miui/optimizemanage/optimizeresult/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/q;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
