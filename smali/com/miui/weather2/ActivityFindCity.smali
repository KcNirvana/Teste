.class public Lcom/miui/weather2/ActivityFindCity;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/miui/weather2/model/m$e;
.implements Lcom/miui/weather2/model/m$f;
.implements Lcom/miui/weather2/model/m$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivityFindCity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Lcom/miui/weather2/ActivityFindCity$a;

.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityDataLight;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/view/LayoutInflater;

.field private g:Lcom/miui/weather2/view/LineWrapLayout;

.field private h:Lcom/miui/weather2/view/LineWrapLayout;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/miui/weather2/model/m;

.field private r:Z

.field private s:Z

.field private t:Landroid/app/AlertDialog;

.field private u:Ljava/lang/Object;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    iput-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    iput-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->r:Z

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->s:Z

    iput-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    iput-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->v:Landroid/view/View;

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->w:Z

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->x:Z

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->y:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->z:Z

    new-instance v0, Lcom/miui/weather2/ActivityFindCity$a;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/ActivityFindCity$a;-><init>(Lcom/miui/weather2/ActivityFindCity;Lcom/miui/weather2/i;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->C:Lcom/miui/weather2/ActivityFindCity$a;

    return-void
.end method

.method private a(Lcom/miui/weather2/structures/CityData;Z)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f00af

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00b0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/ActivityFindCity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    new-instance v0, Lcom/miui/weather2/q;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/weather2/q;-><init>(Lcom/miui/weather2/ActivityFindCity;ZLcom/miui/weather2/structures/CityData;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityFindCity;->c(Lcom/miui/weather2/structures/CityData;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/weather2/ActivityFindCity;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    const v0, 0x7f090093

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/ActivityFindCity;->B:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_1
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityFindCity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityFindCity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityFindCity;Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityFindCity;->b(Lcom/miui/weather2/structures/CityData;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/widget/AbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;",
            "Landroid/widget/AbsListView;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/e;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/e;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/miui/weather2/model/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/miui/weather2/structures/CityData;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityFindCity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityFindCity;->v:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityFindCity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f00a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ClearableEditText;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v5, v5, v3, v5}, Lmiui/widget/ClearableEditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lmiui/widget/ClearableEditText;->requestFocus()Z

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/miui/weather2/i;

    invoke-direct {v4, p0, v1}, Lcom/miui/weather2/i;-><init>(Lcom/miui/weather2/ActivityFindCity;Lmiui/widget/ClearableEditText;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0109

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0107

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/ActionBar$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/miui/weather2/structures/CityData;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->C:Lcom/miui/weather2/ActivityFindCity$a;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityFindCity$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->C:Lcom/miui/weather2/ActivityFindCity$a;

    invoke-virtual {v0, p1, v1}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/structures/CityData;Lcom/miui/weather2/model/m$j;)V

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/ActivityFindCity;->a(Ljava/util/ArrayList;Landroid/widget/AbsListView;)V

    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Lcom/miui/weather2/structures/CityData;

    invoke-direct {v5}, Lcom/miui/weather2/structures/CityData;-><init>()V

    invoke-virtual {v5, v4}, Lcom/miui/weather2/structures/CityData;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->q()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/miui/weather2/structures/CityData;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityDataLight;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/weather2/structures/CityDataLight;->cityEqual(Lcom/miui/weather2/structures/CityDataLight;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const v0, 0x7f0f003d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/LineWrapLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    const v0, 0x7f0f003f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/LineWrapLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->h:Lcom/miui/weather2/view/LineWrapLayout;

    const v0, 0x7f0f003a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/weather2/model/f;

    invoke-direct {v1, p0}, Lcom/miui/weather2/model/f;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->k:Landroid/widget/TextView;

    const v0, 0x7f0f003e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->l:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const v0, 0x7f0f0041

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    const v0, 0x7f0f003b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->i()V

    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->p()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityDataLight;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityDataLight;->getLocateFlag()I

    move-result v0

    if-ne v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/miui/weather2/ActivityFindCity;->r:Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->g()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    new-instance v1, Lcom/miui/weather2/j;

    invoke-direct {v1, p0}, Lcom/miui/weather2/j;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/LineWrapLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/weather2/k;

    invoke-direct {v1, p0}, Lcom/miui/weather2/k;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/weather2/l;

    invoke-direct {v1, p0}, Lcom/miui/weather2/l;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/weather2/m;

    invoke-direct {v1, p0}, Lcom/miui/weather2/m;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/miui/weather2/ActivityFindCity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->z:Z

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->v:Landroid/view/View;

    const v1, 0x7f0f00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$h;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->s:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/weather2/n;

    invoke-direct {v1, p0}, Lcom/miui/weather2/n;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/LineWrapLayout;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->o()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->m:Landroid/widget/TextView;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private o()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000b

    new-instance v2, Lcom/miui/weather2/p;

    invoke-direct {v2, p0}, Lcom/miui/weather2/p;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000d

    new-instance v2, Lcom/miui/weather2/o;

    invoke-direct {v2, p0}, Lcom/miui/weather2/o;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    const-string v0, "com.android.settings/com.android.settings.Settings$LocationSettingsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/weather2/ActivityFindCity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/structures/CityData;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    invoke-virtual {v1, v0, v3}, Lcom/miui/weather2/view/LineWrapLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    invoke-direct {p0, v0, v2}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/structures/CityData;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/miui/weather2/view/LineWrapLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->r:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->g:Lcom/miui/weather2/view/LineWrapLayout;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/LineWrapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/ActivityFindCity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_1
    if-nez p1, :cond_0

    const v0, 0x7f090004

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->x:Z

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->k()V

    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/weather2/model/m;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/miui/weather2/model/m$f;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->n()V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->z:Z

    iput-object p1, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->r()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->z:Z

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->A:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    if-ne p3, v1, :cond_5

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/miui/weather2/ActivityFindCity;->x:Z

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/structures/CityData;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->b(Lcom/miui/weather2/structures/CityData;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->n()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->m()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->j()V

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityFindCity;->b(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/miui/weather2/ActivityFindCity;->x:Z

    if-eqz v1, :cond_6

    const v1, 0x7f090049

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->y:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->l()V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->r:Z

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/ActivityFindCity;->y:Z

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->y:Z

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->i()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->x:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity;->u:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/weather2/model/m;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/miui/weather2/model/m$f;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/weather2/ActivityFindCity;->c:I

    iget-boolean v2, p0, Lcom/miui/weather2/ActivityFindCity;->d:Z

    iget v3, p0, Lcom/miui/weather2/ActivityFindCity;->e:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;ZIZI)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->finish()V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/miui/weather2/be;->onBackPressed()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->i()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->b()V

    new-instance v0, Lcom/miui/weather2/model/m;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_key_citybase_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bundle_key_citybase_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->a:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityFindCity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityFindCity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityFindCity;->B:I

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->e()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->d()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->f()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->q:Lcom/miui/weather2/model/m;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$e;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity;->t:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p3}, Lcom/miui/weather2/tools/at;->a([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->w:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0900a7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityFindCity;->w:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/ActivityFindCity;->g()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
