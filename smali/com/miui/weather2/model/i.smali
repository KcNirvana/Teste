.class Lcom/miui/weather2/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/weather2/model/g;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/g;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    iput-boolean p2, p0, Lcom/miui/weather2/model/i;->a:Z

    iput-object p3, p0, Lcom/miui/weather2/model/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/weather2/model/i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/model/g;->a(Lcom/miui/weather2/model/g;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    invoke-static {v0}, Lcom/miui/weather2/model/g;->b(Lcom/miui/weather2/model/g;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    invoke-static {v0}, Lcom/miui/weather2/model/g;->c(Lcom/miui/weather2/model/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/model/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    invoke-static {v1}, Lcom/miui/weather2/model/g;->c(Lcom/miui/weather2/model/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/model/i;->c:Lcom/miui/weather2/model/g;

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->notifyDataSetChanged()V

    return-void
.end method
