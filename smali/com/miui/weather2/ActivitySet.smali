.class public Lcom/miui/weather2/ActivitySet;
.super Lcom/miui/weather2/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivitySet$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private g:Lmiui/app/AlertDialog;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/miui/weather2/model/a;

.field private m:Lcom/miui/weather2/ActivitySet$a;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CityData;",
            ">;"
        }
    .end annotation
.end field

.field private o:[Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->g:Lmiui/app/AlertDialog;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->k:Landroid/view/View;

    new-instance v0, Lcom/miui/weather2/ActivitySet$a;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/ActivitySet$a;-><init>(Lcom/miui/weather2/ActivitySet;Lcom/miui/weather2/r;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySet;->m:Lcom/miui/weather2/ActivitySet$a;

    iput v2, p0, Lcom/miui/weather2/ActivitySet;->t:I

    iput v2, p0, Lcom/miui/weather2/ActivitySet;->u:I

    iput v2, p0, Lcom/miui/weather2/ActivitySet;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySet;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySet;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/ActivitySet;->t:I

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    new-instance v1, Lcom/miui/weather2/r;

    invoke-direct {v1, p0}, Lcom/miui/weather2/r;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivitySet;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySet;[Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/ActivitySet;->a([Ljava/lang/String;II)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    :goto_0
    const/16 v3, 0x17

    if-eqz p1, :cond_1

    move v4, v2

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/w;->a(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v4, 0x3b

    goto :goto_1
.end method

.method private a([Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/weather2/x;

    invoke-direct {v1, p0, p3}, Lcom/miui/weather2/x;-><init>(Lcom/miui/weather2/ActivitySet;I)V

    invoke-virtual {v0, p1, p2, v1}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivitySet;->g:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->g:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->g:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivitySet;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivitySet;->o:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/weather2/ActivitySet;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/ActivitySet;->u:I

    return p1
.end method

.method static synthetic b(Lcom/miui/weather2/ActivitySet;)Lcom/miui/weather2/model/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->l:Lcom/miui/weather2/model/a;

    return-object v0
.end method

.method private b()V
    .locals 8

    const v7, 0x7f0f0140

    const v6, 0x7f0f013f

    const v5, 0x7f0f0065

    const v4, 0x7f0900ca

    const v3, 0x7f0900c9

    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0185

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0186

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->q:Ljava/lang/String;

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/ActivitySet;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/weather2/ActivitySet;->t:I

    :goto_0
    const v1, 0x7f0f0184

    invoke-virtual {p0, v1}, Lcom/miui/weather2/ActivitySet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0f0185

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0186

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/weather2/ActivitySet;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/weather2/ActivitySet;->r:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/weather2/ActivitySet;->s:[Ljava/lang/String;

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/weather2/ActivitySet;->u:I

    iget-object v2, p0, Lcom/miui/weather2/ActivitySet;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/weather2/ActivitySet;->s:[Ljava/lang/String;

    iget v4, p0, Lcom/miui/weather2/ActivitySet;->u:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/weather2/s;

    invoke-direct {v2, p0}, Lcom/miui/weather2/s;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/weather2/t;

    invoke-direct {v0, p0}, Lcom/miui/weather2/t;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    const v1, 0x7f0f0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900be

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0900bd

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->y(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    new-instance v1, Lcom/miui/weather2/u;

    invoke-direct {v1, p0}, Lcom/miui/weather2/u;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900a9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0900a8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->E(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    new-instance v1, Lcom/miui/weather2/v;

    invoke-direct {v1, p0}, Lcom/miui/weather2/v;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->k:Landroid/view/View;

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->G(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    new-instance v1, Lcom/miui/weather2/w;

    invoke-direct {v1, p0}, Lcom/miui/weather2/w;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/weather2/ActivitySet;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/weather2/ActivitySet;->t:I

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->p:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/weather2/ActivitySet;->w:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/weather2/ActivitySet;->v:I

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/weather2/y;

    invoke-direct {v1, p0}, Lcom/miui/weather2/y;-><init>(Lcom/miui/weather2/ActivitySet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySet;->w:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivitySet;->v:I

    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/weather2/ActivitySet;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivitySet;->t:I

    return v0
.end method

.method static synthetic g(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/weather2/ActivitySet;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/ActivitySet;->u:I

    return v0
.end method

.method static synthetic i(Lcom/miui/weather2/ActivitySet;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/miui/weather2/ActivitySet;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySet;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySet;->setContentView(I)V

    new-instance v1, Lcom/miui/weather2/model/m;

    invoke-direct {v1, p0}, Lcom/miui/weather2/model/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/weather2/model/a;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/ActivitySet;->l:Lcom/miui/weather2/model/a;

    const v0, 0x7f0f005c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivitySet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/weather2/ActivitySet;->l:Lcom/miui/weather2/model/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bundle_key_citybase_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->n:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/ActivitySet;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030061

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/ActivitySet;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/ActivitySet;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivitySet;->m:Lcom/miui/weather2/ActivitySet$a;

    invoke-virtual {v1, v2}, Lcom/miui/weather2/model/m;->a(Lcom/miui/weather2/model/m$f;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030012

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->i:Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004f

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/weather2/ActivitySet;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivitySet;->w:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivitySet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivitySet;->v:I

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySet;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivitySet;->a()V

    return-void

    :cond_0
    iput-object v4, p0, Lcom/miui/weather2/ActivitySet;->i:Landroid/view/View;

    iput-object v4, p0, Lcom/miui/weather2/ActivitySet;->j:Landroid/view/View;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    return-void
.end method
