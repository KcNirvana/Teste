.class public Lcom/miui/weather2/model/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/a;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/model/a;->d:Z

    iput-object p1, p0, Lcom/miui/weather2/model/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/model/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/model/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/weather2/model/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/weather2/model/d;-><init>(Lcom/miui/weather2/model/a;ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/model/a;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/a;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/model/a;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/a;->b:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/miui/weather2/structures/CityData;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/model/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    goto :goto_0
.end method

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

    iput-object p1, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/weather2/model/a;->b:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/a;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/model/a;->c:Landroid/content/Context;

    const v1, 0x7f030011

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0f0064

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0065

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/model/a;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v3, v2

    :goto_0
    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3}, Lcom/miui/weather2/model/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/weather2/model/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    :goto_2
    new-instance v2, Lcom/miui/weather2/model/b;

    invoke-direct {v2, p0, v1, v3}, Lcom/miui/weather2/model/b;-><init>(Lcom/miui/weather2/model/a;Lmiui/widget/SlidingButton;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/weather2/model/c;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/c;-><init>(Lcom/miui/weather2/model/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v4

    :cond_0
    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/miui/weather2/structures/CityData;->getWholeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_2
.end method
