.class Lcom/miui/powercenter/deepsave/h;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field final synthetic aNA:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

.field context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/h;->aNA:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/h;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/h;->aNA:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->baj(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/h;->aNA:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->baj(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/h;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/powercenter/deepsave/g;

    invoke-direct {v1, v3}, Lcom/miui/powercenter/deepsave/g;-><init>(Lcom/miui/powercenter/deepsave/g;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/g;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/g;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/h;->aNA:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->baj(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/deepsave/g;

    iget-object v2, v1, Lcom/miui/powercenter/deepsave/g;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/miui/powercenter/deepsave/g;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/g;->url:Ljava/lang/String;

    return-object p2
.end method
