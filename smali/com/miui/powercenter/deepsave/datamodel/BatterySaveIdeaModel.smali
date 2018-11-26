.class public Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIdeaList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/l;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/l;-><init>(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private aZf(Lcom/miui/powercenter/deepsave/datamodel/a;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/powercenter/deepsave/a;->getInstance()Lcom/miui/powercenter/deepsave/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/deepsave/a;->aZF()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aME:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZh(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZg(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZh(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZg(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZh(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZg(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private aZg(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private aZh(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aZi(Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_CENTER_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    iget-object v2, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/miui/powercenter/a/g;->bbt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "title_append"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2, v0}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private aZj(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "idea_list"

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mIdeaList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic aZk(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZi(Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic aZl(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZj(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/a;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/a;-><init>(Lcom/miui/powercenter/deepsave/datamodel/a;)V

    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0334

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aME:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/a;->aME:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/a;->aME:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/a;->aMB:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/a;->aMC:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/deepsave/datamodel/a;->aMD:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v0, p3}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZf(Lcom/miui/powercenter/deepsave/datamodel/a;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/a;

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f030115

    return v0
.end method
