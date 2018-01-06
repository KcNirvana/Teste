.class public Lcom/miui/weather2/ActivitySetCity;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/ag$c;
.implements Lcom/miui/weather2/model/m$f;
.implements Lcom/miui/weather2/tools/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivitySetCity$a;
    }
.end annotation


# static fields
.field private static y:I


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Lcom/miui/weather2/view/WeatherDynamicListView;

.field private g:Lcom/miui/weather2/model/g;

.field private h:Lcom/miui/weather2/model/m;

.field private i:Lcom/miui/weather2/model/ag;

.field private j:Ljava/lang/Object;

.field private k:Lcom/miui/weather2/tools/w;

.field private l:Landroid/app/AlertDialog;

.field private m:Z

.field private n:Lcom/miui/weather2/ActivitySetCity$a;

.field private o:Landroid/view/ActionMode;

.field private p:Lmiui/app/ActionBar;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:I

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/animation/ObjectAnimator;

.field private x:Landroid/animation/ObjectAnimator;

.field private z:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    sput v0, Lcom/miui/weather2/ActivitySetCity;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    iput-boolean v2, p0, Lcom/miui/weather2/ActivitySetCity;->a:Z

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->i:Lcom/miui/weather2/model/ag;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->j:Ljava/lang/Object;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    new-instance v0, Lcom/miui/weather2/ActivitySetCity$a;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/ActivitySetCity$a;-><init>(Lcom/miui/weather2/ActivitySetCity;Lcom/miui/weather2/z;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->n:Lcom/miui/weather2/ActivitySetCity$a;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->o:Landroid/view/ActionMode;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/miui/weather2/ActivitySetCity;->A:Z

    iput v2, p0, Lcom/miui/weather2/ActivitySetCity;->B:I

    iput-boolean v2, p0, Lcom/miui/weather2/ActivitySetCity;->C:Z

    iput-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySetCity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivitySetCity;->o:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/view/WeatherDynamicListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/miui/weather2/ActivitySetCity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySetCity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/ActivitySetCity;->a:Z

    return p1
.end method

.method private b(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/weather2/structures/CityData;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivitySetCity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivitySetCity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/weather2/ActivitySetCity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    invoke-virtual {v0, v4}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/ActivitySetCity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivitySetCity;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090042

    new-instance v2, Lcom/miui/weather2/ad;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ad;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003d

    new-instance v2, Lcom/miui/weather2/ac;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ac;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/ActivitySetCity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->o:Landroid/view/ActionMode;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->w:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->x:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    new-instance v1, Lcom/miui/weather2/ae;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ae;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setRearrangeListener(Lcom/miui/weather2/view/WeatherDynamicListView$b;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/af;

    invoke-direct {v1, p0}, Lcom/miui/weather2/af;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/ag;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ag;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/ah;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ah;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/miui/weather2/ActivitySetCity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/model/m;->a([Ljava/lang/String;)Landroid/os/AsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->d()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    invoke-virtual {v0}, Lcom/miui/weather2/model/m;->a()Landroid/os/AsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->h()V

    return-void
.end method

.method private j()V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v1}, Lcom/miui/weather2/model/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/miui/weather2/model/m;->a(Ljava/lang/String;I)Landroid/os/AsyncTask;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setFixedItemViewNum(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/g;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setFixedItemViewNum(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->j()V

    return-void
.end method

.method static synthetic l(Lcom/miui/weather2/ActivitySetCity;)Lmiui/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    return-object v0
.end method

.method private l()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getUpdateTime()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    sub-long v0, v4, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic m(Lcom/miui/weather2/ActivitySetCity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private m()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->j:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->j:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$f;Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v0}, Lcom/miui/weather2/model/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/ActivitySetCity;->c:I

    iget-boolean v2, p0, Lcom/miui/weather2/ActivitySetCity;->d:Z

    iget v3, p0, Lcom/miui/weather2/ActivitySetCity;->e:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/util/ArrayList;IZI)V

    return-void
.end method

.method static synthetic n(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->e()V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090041

    new-instance v2, Lcom/miui/weather2/aa;

    invoke-direct {v2, p0}, Lcom/miui/weather2/aa;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090040

    new-instance v2, Lcom/miui/weather2/ai;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ai;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->m()V

    return-void
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/weather2/ActivitySetCity;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->p:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->f()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->n:Lcom/miui/weather2/ActivitySetCity$a;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/g;->b(Z)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->m()V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivitySetCity;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/weather2/ActivitySetCity;->B:I

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivitySetCity;->b(Lcom/miui/weather2/structures/WeatherData;)V

    iget v0, p0, Lcom/miui/weather2/ActivitySetCity;->B:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->k()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->j:Ljava/lang/Object;

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->k()V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->C:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->A:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivitySetCity;->B:I

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v2, p0, Lcom/miui/weather2/ActivitySetCity;->i:Lcom/miui/weather2/model/ag;

    invoke-virtual {v2, p0, v0}, Lcom/miui/weather2/model/ag;->a(Lcom/miui/weather2/model/ag$c;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->A:Z

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/miui/weather2/ActivitySetCity;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v1}, Lcom/miui/weather2/model/g;->d()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v1}, Lcom/miui/weather2/model/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/weather2/ActivitySetCity;->m:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->d()V

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/weather2/be;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->setContentView(I)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->o()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySetCity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "boolean_key_is_set_city_refresh"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySetCity;->C:Z

    new-instance v0, Lcom/miui/weather2/model/m;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->h:Lcom/miui/weather2/model/m;

    new-instance v0, Lcom/miui/weather2/model/ag;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->i:Lcom/miui/weather2/model/ag;

    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v5}, Lcom/miui/weather2/view/WeatherDynamicListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v4}, Lcom/miui/weather2/view/WeatherDynamicListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, v6}, Lcom/miui/weather2/view/WeatherDynamicListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    new-instance v1, Lcom/miui/weather2/z;

    invoke-direct {v1, p0}, Lcom/miui/weather2/z;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/miui/weather2/ab;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ab;-><init>(Lcom/miui/weather2/ActivitySetCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f005f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySetCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->v:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->v:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivitySetCity;->t:I

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget v3, p0, Lcom/miui/weather2/ActivitySetCity;->t:I

    int-to-float v3, v3

    aput v3, v2, v4

    aput v7, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->w:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->w:Landroid/animation/ObjectAnimator;

    sget v1, Lcom/miui/weather2/ActivitySetCity;->y:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->u:Landroid/widget/FrameLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    aput v7, v2, v4

    iget v3, p0, Lcom/miui/weather2/ActivitySetCity;->t:I

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->x:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->x:Landroid/animation/ObjectAnimator;

    sget v1, Lcom/miui/weather2/ActivitySetCity;->y:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->e()V

    :cond_1
    new-instance v0, Lcom/miui/weather2/model/g;

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/g;-><init>(Landroid/content/Context;Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/model/g;->a(Lcom/miui/weather2/ActivitySetCity;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->b:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/ActivitySetCity;->g:Lcom/miui/weather2/model/g;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->c()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->g()V

    new-instance v0, Lcom/miui/weather2/tools/w;

    invoke-direct {v0, p0, p0}, Lcom/miui/weather2/tools/w;-><init>(Landroid/content/Context;Lcom/miui/weather2/tools/w$a;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->k:Lcom/miui/weather2/tools/w;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySetCity;->m()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onStart()V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->k:Lcom/miui/weather2/tools/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->k:Lcom/miui/weather2/tools/w;

    sget-object v1, Lcom/miui/weather2/g/a$j;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/w;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->k:Lcom/miui/weather2/tools/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySetCity;->k:Lcom/miui/weather2/tools/w;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/w;->a()V

    :cond_0
    return-void
.end method
