.class public Lcom/miui/gamebooster/ui/a;
.super Lcom/miui/common/a/a/f;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static q:Lcom/miui/gamebooster/top/DataModel;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private p:Lcom/miui/gamebooster/top/a;

.field private r:Lcom/miui/gamebooster/top/DataModel;

.field private s:Lcom/miui/gamebooster/ui/b;

.field private t:Ljava/util/ArrayList;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/a;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/a/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->t:Ljava/util/ArrayList;

    return-void
.end method

.method private G()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->v:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/a;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->w:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070902

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->w:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070903

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private H()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private I(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/z;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/z;-><init>(Lcom/miui/gamebooster/ui/a;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/z;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic J(Lcom/miui/gamebooster/ui/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic K(Lcom/miui/gamebooster/ui/a;)Lcom/miui/gamebooster/top/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    return-object v0
.end method

.method static synthetic L(Lcom/miui/gamebooster/ui/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic M()Lcom/miui/gamebooster/top/DataModel;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/a;->q:Lcom/miui/gamebooster/top/DataModel;

    return-object v0
.end method

.method static synthetic N(Lcom/miui/gamebooster/ui/a;)Lcom/miui/gamebooster/top/DataModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->r:Lcom/miui/gamebooster/top/DataModel;

    return-object v0
.end method

.method static synthetic O(Lcom/miui/gamebooster/ui/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic P(Lcom/miui/gamebooster/ui/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic Q(Lcom/miui/gamebooster/top/DataModel;)Lcom/miui/gamebooster/top/DataModel;
    .locals 0

    sput-object p0, Lcom/miui/gamebooster/ui/a;->q:Lcom/miui/gamebooster/top/DataModel;

    return-object p0
.end method

.method static synthetic R(Lcom/miui/gamebooster/ui/a;Lcom/miui/gamebooster/top/DataModel;)Lcom/miui/gamebooster/top/DataModel;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/a;->r:Lcom/miui/gamebooster/top/DataModel;

    return-object p1
.end method

.method static synthetic S(Lcom/miui/gamebooster/ui/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/a;->G()V

    return-void
.end method

.method static synthetic T(Lcom/miui/gamebooster/ui/a;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/a;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03a1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03a2

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->w:Landroid/widget/ImageView;

    const v0, 0x7f0a03a3

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->x:Landroid/widget/TextView;

    const v0, 0x7f0a023f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->listView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/top/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/a;->t:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/top/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->s:Lcom/miui/gamebooster/ui/b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/top/a;->tg(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/a;->I(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/a;->I(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03a1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/f;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/gamebooster/ui/b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/b;-><init>(Lcom/miui/gamebooster/ui/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/a;->s:Lcom/miui/gamebooster/ui/b;

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f03015f

    return v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->p:Lcom/miui/gamebooster/top/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/top/a;->clear()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/f;->onResume()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/a;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
