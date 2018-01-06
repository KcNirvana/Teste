.class public abstract Lcom/miui/weather2/model/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/weather2/model/e;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v0, p0, Lcom/miui/weather2/model/e;->c:Lcom/miui/weather2/ActivityFindCity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityFindCity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/weather2/model/e;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/model/e;->b:Ljava/util/ArrayList;

    return-void
.end method

.method protected a(Landroid/view/View;Lcom/miui/weather2/structures/CityData;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/e;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v0, v0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/model/e;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v0, v0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/model/e;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v0, v0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityDataLight;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/miui/weather2/structures/CityDataLight;->cityEqual(Lcom/miui/weather2/structures/CityDataLight;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
