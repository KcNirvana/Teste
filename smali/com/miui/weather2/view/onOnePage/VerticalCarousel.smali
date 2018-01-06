.class public Lcom/miui/weather2/view/onOnePage/VerticalCarousel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:[I

.field private D:Landroid/os/Handler;

.field private E:Ljava/lang/Runnable;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

.field private r:I

.field private s:Lcom/miui/weather2/structures/CityData;

.field private t:I

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Landroid/animation/ValueAnimator;

.field private z:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->C:[I

    new-instance v0, Lcom/miui/weather2/view/onOnePage/bg;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/bg;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->D:Landroid/os/Handler;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/bh;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/bh;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->E:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->A:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f()V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/miui/weather2/h/a;->a(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    return p1
.end method

.method private a(Lcom/miui/weather2/structures/Alert;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090011

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/Alert;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/Alert;->getLevel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/Alert;->getDetail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Lcom/miui/weather2/structures/InfoCardBean;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoListNodeBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v3

    new-instance v4, Lcom/miui/weather2/structures/Alert;

    invoke-direct {v4}, Lcom/miui/weather2/structures/Alert;-><init>()V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setDetail(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setIconUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrPublishTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setPubTime(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/miui/weather2/structures/Alert;->setIsAlert(Z)V

    invoke-virtual {v4, v3}, Lcom/miui/weather2/structures/Alert;->setInfoDataBean(Lcom/miui/weather2/structures/InfoDataBean;)V

    const-string v0, "true"

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getIsAdIconVisible()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setIsShowAdIcon(Z)V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWaringWeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getWaringWeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/Alert;->setWeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/miui/weather2/structures/Alert;->getWeight()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Wth2:VerticalCarousel"

    const-string v5, "convertInfoDataBeanToAlert()"

    invoke-static {v3, v5, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Lcom/miui/weather2/structures/InfoCardBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/structures/InfoCardBean;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-string v0, "Wth2:VerticalCarousel"

    const-string v1, "requestAlertAd()"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/weather2/f/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v0

    invoke-static {}, Lcom/miui/weather2/tools/bi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1030"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/miui/weather2/tools/bi;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/miui/weather2/f/a;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/miui/weather2/f/a;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/miui/weather2/f/a;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    new-instance v18, Lcom/miui/weather2/view/onOnePage/bm;

    invoke-direct/range {v18 .. v19}, Lcom/miui/weather2/view/onOnePage/bm;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    move-object/from16 v5, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-virtual/range {v0 .. v18}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g()V

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    return v0
.end method

.method static synthetic f(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Lcom/miui/weather2/structures/CityData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->s:Lcom/miui/weather2/structures/CityData;

    return-object v0
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Lcom/miui/weather2/view/onOnePage/bg;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q:Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/bi;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/bi;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->y:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->y:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/bj;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/bj;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic g(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->t:I

    return v0
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setAlertContainer(Z)V

    :goto_0
    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e:Z

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e:Z

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setAlertContainer(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getCurrentIndexAndUpdate()I
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a:I

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a:I

    goto :goto_0
.end method

.method private h()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a:I

    iput v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setVisibility(I)V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/bk;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/bk;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->v:I

    return v0
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setAlertContainer(Z)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f:Z

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->setAlertContainer(Z)V

    :cond_2
    iput v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g:Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/bl;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/bl;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    const-wide/16 v2, 0x1194

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->C:[I

    return-object v0
.end method

.method static synthetic l(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->A:I

    return v0
.end method

.method static synthetic m(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->B:I

    return v0
.end method

.method static synthetic n(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->z:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic p(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d:I

    return v0
.end method

.method static synthetic q(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c:I

    return v0
.end method

.method private setAlertContainer(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getCurrentIndexAndUpdate()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIsAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/structures/Alert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIsAlert()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/structures/Alert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic t(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->E:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic u(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e:Z

    return v0
.end method

.method static synthetic w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->b:I

    return v0
.end method

.method static synthetic x(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j()V

    return-void
.end method

.method public a(IZI)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->t:I

    iput-boolean p2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->u:Z

    iput p3, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->v:I

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/CityData;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->o:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->p:Landroid/view/View;

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->s:Lcom/miui/weather2/structures/CityData;

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r:I

    if-nez p1, :cond_4

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_5

    const-string v1, ""

    move-object v2, v1

    :goto_2
    if-nez p1, :cond_6

    const-string v1, ""

    :goto_3
    invoke-direct {p0, v0, v2, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getAlertArray()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_5
    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getAlertArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a()V

    goto :goto_4
.end method

.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->g:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->f:Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->D:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->clearAnimation()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->D:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->b()V

    :cond_0
    return-void
.end method

.method public getCurrentCarouselAlert()Lcom/miui/weather2/structures/Alert;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0f018e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0192

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0190

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f0193

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f0191

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->i:Landroid/widget/TextView;

    const v0, 0x7f0f0194

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->z:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->B:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->b:I

    return-void
.end method
