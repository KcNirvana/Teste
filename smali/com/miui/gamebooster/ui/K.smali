.class final Lcom/miui/gamebooster/ui/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/cards/k;


# instance fields
.field final synthetic db:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/K;->db:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eh(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/K;->db:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bf(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/K;->db:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/K;->db:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/BaseModel;

    instance-of v2, v0, Lcom/miui/gamebooster/gamead/Advertisement;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/K;->db:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bf(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
