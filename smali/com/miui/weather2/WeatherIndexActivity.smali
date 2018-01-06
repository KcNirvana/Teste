.class public Lcom/miui/weather2/WeatherIndexActivity;
.super Lcom/miui/weather2/be;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lcom/bumptech/glide/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/f",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/miui/weather2/view/LoadingView;

.field private b:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Landroid/content/res/Resources;

.field private j:Landroid/view/View;

.field private k:Lcom/miui/weather2/model/w;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    new-instance v0, Lcom/miui/weather2/bh;

    invoke-direct {v0, p0}, Lcom/miui/weather2/bh;-><init>(Lcom/miui/weather2/WeatherIndexActivity;)V

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->L:Lcom/bumptech/glide/g/f;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "primary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    const-string v1, "sedondary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->E:Ljava/lang/String;

    const-string v1, "head_image_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->B:Ljava/lang/String;

    const-string v1, "head_icon_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->C:Ljava/lang/String;

    const-string v1, "location_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->F:Ljava/lang/String;

    const-string v1, "restrict"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->A:Ljava/lang/String;

    const-string v1, "index_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->H:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "count_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->finish()V

    :cond_0
    const/16 v0, 0x89

    const-string v1, "weather_info_style_abtest_new"

    const-string v2, "original"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->K:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->i:Landroid/content/res/Resources;

    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->m:Landroid/view/View;

    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/miui/weather2/WeatherIndexActivity;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->v:Landroid/view/View;

    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->v:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->i:Landroid/content/res/Resources;

    const v1, 0x7f0a0222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->w:I

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->i:Landroid/content/res/Resources;

    const v1, 0x7f0a0223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->w:I

    iput v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->w:I

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->y:I

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x7f0f00b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->d()V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->e()V

    :cond_5
    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->c()V

    new-instance v0, Lcom/miui/weather2/model/w;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->J:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->k:Lcom/miui/weather2/model/w;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->k:Lcom/miui/weather2/model/w;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0f011d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/LoadingView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    const v0, 0x7f0f0125

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->b()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->I:Ljava/lang/String;

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/bumptech/glide/j;->a(Landroid/app/Activity;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    if-ge p1, v0, :cond_2

    iget p1, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->y:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->w:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/miui/weather2/WeatherIndexActivity;->w:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->L:Lcom/bumptech/glide/g/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/a;

    move-result-object v0

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(I)Lcom/bumptech/glide/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/view/LoadingView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    return-object v0
.end method

.method private b()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->m:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/LoadingView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/LoadingView;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/LoadingView;->d()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->b:Landroid/widget/TextView;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miui/weather2/WeatherIndexActivity;->a(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/weather2/f/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v1

    invoke-static {}, Lcom/miui/weather2/tools/bi;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/weather2/WeatherIndexActivity;->A:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/weather2/WeatherIndexActivity;->F:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/miui/weather2/tools/bi;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/miui/weather2/f/a;->e()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/miui/weather2/f/a;->f()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/miui/weather2/f/a;->g()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/miui/weather2/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Lcom/miui/weather2/bj;

    invoke-direct/range {v19 .. v20}, Lcom/miui/weather2/bj;-><init>(Lcom/miui/weather2/WeatherIndexActivity;)V

    invoke-virtual/range {v1 .. v19}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/LoadingView;->a()V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    aget-object v3, v0, v5

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->G:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_0
    new-instance v4, Lcom/miui/weather2/model/af;

    invoke-direct {v4, p0, v3, v2, v0}, Lcom/miui/weather2/model/af;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030029

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/weather2/model/af;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/weather2/model/af;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/miui/weather2/model/af;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, v4, Lcom/miui/weather2/model/af;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/y;

    invoke-direct {v0}, Lcom/miui/weather2/model/y;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->j:Landroid/view/View;

    iput-object v1, v0, Lcom/miui/weather2/model/y;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/weather2/WeatherIndexActivity;->j:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/miui/weather2/WeatherIndexActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/weather2/model/ae;

    invoke-direct {v1}, Lcom/miui/weather2/model/ae;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03002b

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f00ba

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f00bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/WeatherIndexActivity;->E:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/weather2/WeatherIndexActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object v7, v1, Lcom/miui/weather2/model/ae;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/miui/weather2/WeatherIndexActivity;)Lcom/miui/weather2/model/w;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->k:Lcom/miui/weather2/model/w;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/v;

    if-eqz v0, :cond_0

    iput-boolean v2, v0, Lcom/miui/weather2/model/v;->a:Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/miui/weather2/WeatherIndexActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->b()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00b5 -> :sswitch_1
        0x7f0f00d3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/weather2/WeatherIndexActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherIndexActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->i()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->f()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-ge p3, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    iget-object v2, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    iget-object v1, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/weather2/WeatherIndexActivity;->a(I)V

    :cond_2
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    iget-object v1, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    shr-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_3
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    iget-object v1, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v4, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/WeatherIndexActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v1, v4, v1

    shr-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 p3, p3, -0x1

    :cond_4
    move v2, v3

    :goto_0
    if-ge v2, p3, :cond_8

    add-int v1, p2, v2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/miui/weather2/WeatherIndexActivity;->z:I

    sub-int/2addr v4, v5

    iget-object v5, v1, Lcom/miui/weather2/model/v;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_7

    iget-boolean v4, v1, Lcom/miui/weather2/model/v;->a:Z

    if-eqz v4, :cond_5

    iput-boolean v3, v1, Lcom/miui/weather2/model/v;->a:Z

    :cond_5
    :goto_1
    iget-boolean v4, v1, Lcom/miui/weather2/model/v;->a:Z

    if-nez v4, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_7
    iget-boolean v4, v1, Lcom/miui/weather2/model/v;->a:Z

    if-nez v4, :cond_5

    iput-boolean v6, v1, Lcom/miui/weather2/model/v;->a:Z

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v1, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_2
    if-ge v2, p2, :cond_9

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    iput-boolean v3, v1, Lcom/miui/weather2/model/v;->a:Z

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_9
    add-int v1, p2, p3

    move v2, v1

    :goto_3
    if-ge v2, p4, :cond_0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/model/v;

    iput-boolean v3, v1, Lcom/miui/weather2/model/v;->a:Z

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    invoke-direct {p0}, Lcom/miui/weather2/WeatherIndexActivity;->g()V

    iget-object v0, p0, Lcom/miui/weather2/WeatherIndexActivity;->a:Lcom/miui/weather2/view/LoadingView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/LoadingView;->b()V

    return-void
.end method
