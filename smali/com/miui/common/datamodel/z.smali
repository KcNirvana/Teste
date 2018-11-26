.class public Lcom/miui/common/datamodel/z;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field protected aBh:Landroid/view/View$OnClickListener;

.field protected aBi:Ljava/util/ArrayList;

.field protected aBj:Ljava/util/ArrayList;

.field protected mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/common/datamodel/C;

    invoke-direct {v0, p0}, Lcom/miui/common/datamodel/C;-><init>(Lcom/miui/common/datamodel/z;)V

    iput-object v0, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/common/datamodel/D;

    invoke-direct {v0, p0}, Lcom/miui/common/datamodel/D;-><init>(Lcom/miui/common/datamodel/z;)V

    iput-object v0, p0, Lcom/miui/common/datamodel/z;->aBh:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public aKn(Lcom/miui/common/datamodel/BaseModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/datamodel/z;->aKq(Ljava/util/List;Lcom/miui/common/datamodel/BaseModel;)V

    invoke-virtual {p0}, Lcom/miui/common/datamodel/z;->notifyDataSetChanged()V

    return-void
.end method

.method public aKo(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    iget-object v2, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/BaseModel;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/common/datamodel/BaseModel;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public aKp(I)V
    .locals 2

    iget-object v1, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/common/datamodel/z;->aKq(Ljava/util/List;Lcom/miui/common/datamodel/BaseModel;)V

    invoke-virtual {p0}, Lcom/miui/common/datamodel/z;->notifyDataSetChanged()V

    return-void
.end method

.method protected aKq(Ljava/util/List;Lcom/miui/common/datamodel/BaseModel;)V
    .locals 3

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    if-ltz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/datamodel/Line;

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/datamodel/Line;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public aKr(Lcom/miui/common/datamodel/BaseModel;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    iget-object v3, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/common/datamodel/z;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/common/datamodel/BaseModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/common/datamodel/z;->getItem(I)Lcom/miui/common/datamodel/BaseModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/common/datamodel/z;->getItem(I)Lcom/miui/common/datamodel/BaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/datamodel/BaseModel;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f0a00c5

    const v8, 0x7f0a0038

    const v7, 0x7f0a0185

    const v6, 0x7f0a017a

    const v5, 0x7f0a00b0

    invoke-virtual {p0, p1}, Lcom/miui/common/datamodel/z;->getItem(I)Lcom/miui/common/datamodel/BaseModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/datamodel/BaseModel;->getLayoutId()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0016

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBh:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    sparse-switch v2, :sswitch_data_1

    :cond_1
    :goto_1
    :sswitch_1
    invoke-virtual {v1, p1, p2, v3, p0}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    return-object p2

    :sswitch_2
    new-instance v4, Lcom/miui/common/datamodel/d;

    invoke-direct {v4}, Lcom/miui/common/datamodel/d;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->aAj:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->aAi:Landroid/widget/TextView;

    goto :goto_0

    :sswitch_3
    new-instance v4, Lcom/miui/common/datamodel/d;

    invoke-direct {v4}, Lcom/miui/common/datamodel/d;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->aAj:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->aAi:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/d;->aAk:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/d;->aAk:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_4
    new-instance v4, Lcom/miui/common/datamodel/e;

    invoke-direct {v4}, Lcom/miui/common/datamodel/e;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/e;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/e;->aAl:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/e;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/e;->aAn:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/e;->aAm:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/e;->aAm:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v4, Lcom/miui/common/datamodel/f;

    invoke-direct {v4}, Lcom/miui/common/datamodel/f;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/f;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/f;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/f;->aAq:Landroid/widget/TextView;

    const v0, 0x7f0a03d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/f;->aAp:Landroid/widget/TextView;

    const v0, 0x7f0a03d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/f;->aAr:Landroid/widget/TextView;

    goto/16 :goto_0

    :sswitch_6
    new-instance v4, Lcom/miui/common/datamodel/g;

    invoke-direct {v4}, Lcom/miui/common/datamodel/g;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAs:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAx:Landroid/widget/TextView;

    const v0, 0x7f0a0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAv:Landroid/widget/TextView;

    const v0, 0x7f0a018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAw:Landroid/widget/RatingBar;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAt:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/g;->aAt:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/g;->aAu:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/g;->aAu:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v4, Lcom/miui/common/datamodel/h;

    invoke-direct {v4}, Lcom/miui/common/datamodel/h;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/h;->aAz:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/h;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/h;->aAA:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/h;->aAy:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/h;->aAy:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v4, Lcom/miui/common/datamodel/l;

    invoke-direct {v4}, Lcom/miui/common/datamodel/l;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/l;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/l;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/l;->aAn:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/l;->aAm:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/l;->aAm:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v4, Lcom/miui/common/datamodel/m;

    invoke-direct {v4}, Lcom/miui/common/datamodel/m;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/m;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/m;->title:Landroid/widget/TextView;

    const v0, 0x7f0a018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/m;->aAl:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/m;->aAn:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/m;->aAm:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/m;->aAm:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v4, Lcom/miui/common/datamodel/n;

    invoke-direct {v4}, Lcom/miui/common/datamodel/n;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->aAq:Landroid/widget/TextView;

    const v0, 0x7f0a03d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->aAp:Landroid/widget/TextView;

    const v0, 0x7f0a03d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->aAr:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/n;->aAo:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/n;->aAo:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_b
    new-instance v4, Lcom/miui/common/datamodel/o;

    invoke-direct {v4}, Lcom/miui/common/datamodel/o;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAH:Landroid/widget/TextView;

    const v0, 0x7f0a03d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAI:Landroid/widget/TextView;

    const v0, 0x7f0a018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAJ:Landroid/widget/TextView;

    const v0, 0x7f0a0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAE:Landroid/widget/ImageView;

    const v0, 0x7f0a0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAF:Landroid/widget/ImageView;

    const v0, 0x7f0a018a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAG:Landroid/widget/ImageView;

    const v0, 0x7f0a03d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAK:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->aAC:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/o;->aAC:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/o;->line:Landroid/view/View;

    goto/16 :goto_0

    :sswitch_c
    new-instance v4, Lcom/miui/common/datamodel/p;

    invoke-direct {v4}, Lcom/miui/common/datamodel/p;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a03d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAR:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAR:Landroid/view/View;

    const v5, 0x7f0a03d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAL:Landroid/widget/TextView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAR:Landroid/view/View;

    const v5, 0x7f0a03d2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAM:Landroid/widget/ImageView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAR:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAS:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAS:Landroid/view/View;

    const v5, 0x7f0a03d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAN:Landroid/widget/TextView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAS:Landroid/view/View;

    const v5, 0x7f0a03d2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAO:Landroid/widget/ImageView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAS:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAT:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAT:Landroid/view/View;

    const v5, 0x7f0a03d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAP:Landroid/widget/TextView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAT:Landroid/view/View;

    const v5, 0x7f0a03d2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/p;->aAQ:Landroid/widget/ImageView;

    iget-object v0, v4, Lcom/miui/common/datamodel/p;->aAT:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v4, Lcom/miui/common/datamodel/q;

    invoke-direct {v4}, Lcom/miui/common/datamodel/q;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/q;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/q;->aAU:Landroid/widget/Button;

    iget-object v5, v4, Lcom/miui/common/datamodel/q;->aAV:[Landroid/widget/ImageView;

    const v0, 0x7f0a016b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    iget-object v5, v4, Lcom/miui/common/datamodel/q;->aAV:[Landroid/widget/ImageView;

    const v0, 0x7f0a038a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v0, v5, v6

    iget-object v5, v4, Lcom/miui/common/datamodel/q;->aAV:[Landroid/widget/ImageView;

    const v0, 0x7f0a038b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v6, 0x2

    aput-object v0, v5, v6

    iget-object v5, v4, Lcom/miui/common/datamodel/q;->aAV:[Landroid/widget/ImageView;

    const v0, 0x7f0a038c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v0, v5, v6

    iget-object v0, v4, Lcom/miui/common/datamodel/q;->aAU:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v4, Lcom/miui/common/datamodel/r;

    invoke-direct {v4}, Lcom/miui/common/datamodel/r;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/r;->aAY:Landroid/widget/TextView;

    const v0, 0x7f0a027f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, Lcom/miui/common/datamodel/r;->aAX:Landroid/view/ViewGroup;

    const v0, 0x7f0a007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/r;->line:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/r;->aAW:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/r;->aAW:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v4, Lcom/miui/common/datamodel/s;

    invoke-direct {v4}, Lcom/miui/common/datamodel/s;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/s;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/s;->aAn:Landroid/widget/TextView;

    const v0, 0x7f0a0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/s;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/s;->aAm:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/s;->aAm:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v4, Lcom/miui/common/datamodel/t;

    invoke-direct {v4}, Lcom/miui/common/datamodel/t;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/t;->aBb:Landroid/widget/TextView;

    const v0, 0x7f0a03d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/t;->aBa:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/t;->line:Landroid/view/View;

    const v0, 0x7f0a03da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/t;->aAZ:Landroid/widget/TextView;

    goto/16 :goto_0

    :sswitch_11
    new-instance v4, Lcom/miui/common/datamodel/u;

    invoke-direct {v4}, Lcom/miui/common/datamodel/u;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/u;->title:Landroid/widget/TextView;

    goto/16 :goto_0

    :sswitch_12
    new-instance v4, Lcom/miui/common/datamodel/v;

    invoke-direct {v4}, Lcom/miui/common/datamodel/v;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/v;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/v;->title:Landroid/widget/TextView;

    goto/16 :goto_0

    :sswitch_13
    new-instance v4, Lcom/miui/common/datamodel/w;

    invoke-direct {v4}, Lcom/miui/common/datamodel/w;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/w;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/w;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/w;->aBc:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/w;->aBc:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v4, Lcom/miui/common/datamodel/x;

    invoke-direct {v4}, Lcom/miui/common/datamodel/x;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->title:Landroid/widget/TextView;

    const v0, 0x7f0a018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aAl:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aAn:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aAm:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/x;->aAm:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aBe:Landroid/widget/TextView;

    const v0, 0x7f0a018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aBf:Landroid/widget/RatingBar;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/x;->aBd:Landroid/widget/TextView;

    iget-object v0, v4, Lcom/miui/common/datamodel/x;->aBd:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v4, Lcom/miui/common/datamodel/c;

    invoke-direct {v4}, Lcom/miui/common/datamodel/c;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->aAg:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->aAh:Landroid/widget/TextView;

    const v0, 0x7f0a0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->aAf:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->aAd:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/c;->aAd:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/c;->aAe:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/c;->aAe:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_16
    new-instance v4, Lcom/miui/common/datamodel/i;

    invoke-direct {v4}, Lcom/miui/common/datamodel/i;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAH:Landroid/widget/TextView;

    const v0, 0x7f0a0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAD:Landroid/widget/TextView;

    const v0, 0x7f0a0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAE:Landroid/widget/ImageView;

    const v0, 0x7f0a0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAF:Landroid/widget/ImageView;

    const v0, 0x7f0a018a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAG:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAB:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/i;->aAB:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/i;->aAC:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/i;->aAC:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_17
    new-instance v4, Lcom/miui/common/datamodel/j;

    invoke-direct {v4}, Lcom/miui/common/datamodel/j;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAH:Landroid/widget/TextView;

    const v0, 0x7f0a0187

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAD:Landroid/widget/TextView;

    const v0, 0x7f0a0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAE:Landroid/widget/ImageView;

    const v0, 0x7f0a0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAF:Landroid/widget/ImageView;

    const v0, 0x7f0a018a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAG:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAB:Landroid/widget/Button;

    iget-object v0, v4, Lcom/miui/common/datamodel/j;->aAB:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lcom/miui/common/datamodel/j;->aAC:Landroid/view/View;

    iget-object v0, v4, Lcom/miui/common/datamodel/j;->aAC:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_18
    invoke-static {p2, v1}, Lcom/miui/common/datamodel/A;->aKt(Landroid/view/View;Lcom/miui/common/datamodel/BaseModel;)Lcom/miui/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v4, v0, Lcom/miui/b/a;->initialized:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/common/datamodel/z;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/e;

    iget-object v0, v0, Lcom/miui/common/datamodel/e;->aAm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/p;

    iget-object v2, v0, Lcom/miui/common/datamodel/p;->aAR:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/miui/common/datamodel/p;->aAS:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/p;->aAT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/g;

    iget-object v2, v0, Lcom/miui/common/datamodel/g;->aAt:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/g;->aAu:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/h;

    iget-object v0, v0, Lcom/miui/common/datamodel/h;->aAy:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/r;

    iget-object v0, v0, Lcom/miui/common/datamodel/r;->aAW:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/s;

    iget-object v0, v0, Lcom/miui/common/datamodel/s;->aAm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/d;

    iget-object v0, v0, Lcom/miui/common/datamodel/d;->aAk:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/n;

    iget-object v0, v0, Lcom/miui/common/datamodel/n;->aAo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_21
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/o;

    iget-object v0, v0, Lcom/miui/common/datamodel/o;->aAC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/q;

    iget-object v0, v0, Lcom/miui/common/datamodel/q;->aAU:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/w;

    iget-object v0, v0, Lcom/miui/common/datamodel/w;->aBc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/x;

    iget-object v2, v0, Lcom/miui/common/datamodel/x;->aAm:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/x;->aBd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/c;

    iget-object v2, v0, Lcom/miui/common/datamodel/c;->aAd:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/c;->aAe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/i;

    iget-object v2, v0, Lcom/miui/common/datamodel/i;->aAB:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/i;->aAC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/j;

    iget-object v2, v0, Lcom/miui/common/datamodel/j;->aAB:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/j;->aAC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/b/a;

    iget-boolean v2, v0, Lcom/miui/b/a;->initialized:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f03007a -> :sswitch_15
        0x7f03007b -> :sswitch_7
        0x7f03007c -> :sswitch_16
        0x7f03007d -> :sswitch_17
        0x7f03007e -> :sswitch_a
        0x7f03007f -> :sswitch_b
        0x7f030080 -> :sswitch_6
        0x7f030081 -> :sswitch_13
        0x7f030082 -> :sswitch_14
        0x7f030143 -> :sswitch_18
        0x7f030144 -> :sswitch_18
        0x7f030145 -> :sswitch_18
        0x7f030146 -> :sswitch_18
        0x7f030147 -> :sswitch_18
        0x7f030169 -> :sswitch_6
        0x7f03016a -> :sswitch_8
        0x7f03016b -> :sswitch_9
        0x7f03016c -> :sswitch_3
        0x7f03016d -> :sswitch_3
        0x7f03016e -> :sswitch_2
        0x7f030171 -> :sswitch_c
        0x7f030172 -> :sswitch_d
        0x7f030173 -> :sswitch_3
        0x7f030174 -> :sswitch_3
        0x7f030175 -> :sswitch_3
        0x7f030176 -> :sswitch_4
        0x7f030177 -> :sswitch_2
        0x7f030178 -> :sswitch_12
        0x7f03017c -> :sswitch_5
        0x7f03017f -> :sswitch_11
        0x7f030180 -> :sswitch_e
        0x7f030181 -> :sswitch_10
        0x7f030183 -> :sswitch_0
        0x7f030184 -> :sswitch_f
        0x7f030186 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f03007a -> :sswitch_25
        0x7f03007b -> :sswitch_1c
        0x7f03007c -> :sswitch_26
        0x7f03007d -> :sswitch_27
        0x7f03007e -> :sswitch_20
        0x7f03007f -> :sswitch_21
        0x7f030080 -> :sswitch_1b
        0x7f030081 -> :sswitch_23
        0x7f030082 -> :sswitch_24
        0x7f030143 -> :sswitch_28
        0x7f030144 -> :sswitch_28
        0x7f030145 -> :sswitch_28
        0x7f030146 -> :sswitch_28
        0x7f030147 -> :sswitch_28
        0x7f030169 -> :sswitch_1b
        0x7f03016a -> :sswitch_19
        0x7f03016b -> :sswitch_19
        0x7f03016c -> :sswitch_1f
        0x7f03016d -> :sswitch_1f
        0x7f03016e -> :sswitch_1
        0x7f030171 -> :sswitch_1a
        0x7f030172 -> :sswitch_22
        0x7f030173 -> :sswitch_1f
        0x7f030174 -> :sswitch_1f
        0x7f030175 -> :sswitch_1f
        0x7f030176 -> :sswitch_19
        0x7f030177 -> :sswitch_1
        0x7f03017f -> :sswitch_1
        0x7f030180 -> :sswitch_1d
        0x7f030181 -> :sswitch_1
        0x7f030184 -> :sswitch_1e
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/z;->aBj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
