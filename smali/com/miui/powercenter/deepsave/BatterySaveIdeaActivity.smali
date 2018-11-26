.class public Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field private aNw:Ljava/util/ArrayList;

.field private aNx:Lcom/miui/powercenter/deepsave/h;

.field private aNy:Landroid/widget/ListView;

.field private aNz:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/deepsave/l;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/l;-><init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNz:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/miui/powercenter/deepsave/h;

    invoke-direct {v0, p0, p0}, Lcom/miui/powercenter/deepsave/h;-><init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNx:Lcom/miui/powercenter/deepsave/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNw:Ljava/util/ArrayList;

    return-void
.end method

.method private bai(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_CENTER_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic baj(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNw:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bak(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->bai(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030109

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->setContentView(I)V

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNy:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNy:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNz:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNy:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNx:Lcom/miui/powercenter/deepsave/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "idea_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->aNw:Ljava/util/ArrayList;

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
