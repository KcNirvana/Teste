.class Lcom/miui/appmanager/widget/c;
.super Landroid/widget/ArrayAdapter;
.source ""


# instance fields
.field aRt:Ljava/util/List;

.field final synthetic aRu:Lcom/miui/appmanager/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/widget/a;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/widget/c;->aRu:Lcom/miui/appmanager/widget/a;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/miui/appmanager/widget/c;->aRt:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/miui/appmanager/widget/f;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/appmanager/widget/c;->aRt:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/c;->aRt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/f;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/widget/c;->getItem(I)Lcom/miui/appmanager/widget/f;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/widget/c;->aRu:Lcom/miui/appmanager/widget/a;

    invoke-static {v0}, Lcom/miui/appmanager/widget/a;->bim(Lcom/miui/appmanager/widget/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/appmanager/widget/d;

    iget-object v0, p0, Lcom/miui/appmanager/widget/c;->aRu:Lcom/miui/appmanager/widget/a;

    invoke-direct {v1, v0}, Lcom/miui/appmanager/widget/d;-><init>(Lcom/miui/appmanager/widget/a;)V

    const v0, 0x7f0a00f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/appmanager/widget/d;->aRv:Landroid/widget/ImageView;

    const v0, 0x7f0a00f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/appmanager/widget/d;->aRw:Landroid/widget/ImageView;

    const v0, 0x7f0a00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/appmanager/widget/d;->aRx:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/appmanager/widget/c;->getItem(I)Lcom/miui/appmanager/widget/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/appmanager/widget/c;->aRu:Lcom/miui/appmanager/widget/a;

    invoke-static {v2}, Lcom/miui/appmanager/widget/a;->bio(Lcom/miui/appmanager/widget/a;)I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Lcom/miui/appmanager/widget/d;->aRv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, v0, Lcom/miui/appmanager/widget/d;->aRw:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/appmanager/widget/c;->aRu:Lcom/miui/appmanager/widget/a;

    invoke-static {v3}, Lcom/miui/appmanager/widget/a;->bim(Lcom/miui/appmanager/widget/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Lcom/miui/appmanager/widget/f;->aRK:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/miui/appmanager/widget/d;->aRx:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/miui/appmanager/widget/f;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/d;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/miui/appmanager/widget/d;->aRv:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
