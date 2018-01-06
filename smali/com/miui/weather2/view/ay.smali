.class Lcom/miui/weather2/view/ay;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/weather2/view/ax;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/ax;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iput p2, p0, Lcom/miui/weather2/view/ay;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/view/ay;->a:I

    const v1, 0x7f0f00f9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/weather2/tools/ap;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/weather2/tools/ap;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "agreeCount"

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "disagreeCount"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    new-instance v6, Ljava/lang/Double;

    long-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    long-to-double v10, v4

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v7, v7, Lcom/miui/weather2/view/ax;->c:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v8, v8, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080006

    long-to-int v10, v4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->d:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    int-to-float v9, v6

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIconAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->r:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v4}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v5, v5, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeIconAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v5, v5, Lcom/miui/weather2/view/ax;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_0
    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIconAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->r:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v4}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v5, v5, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeIconAfter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v5, v5, Lcom/miui/weather2/view/ax;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :goto_1
    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->g:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v5, v5, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f080008

    long-to-int v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080005

    long-to-int v5, v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    const v2, 0x7f090107

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    const v2, 0x7f0900ab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rsub-int/lit8 v5, v6, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImgAfter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->r:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeBtnImgAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/az;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/az;-><init>(Lcom/miui/weather2/view/ay;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_2
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImgAfter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->r:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeBtnImgAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/ba;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/ba;-><init>(Lcom/miui/weather2/view/ay;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :goto_3
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->n:Landroid/widget/TextView;

    const-string v1, "textColor"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v4, v4, Lcom/miui/weather2/view/ax;->o:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v4, v4, Lcom/miui/weather2/view/ax;->p:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->q:Landroid/widget/TextView;

    const-string v1, "textColor"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v4, v4, Lcom/miui/weather2/view/ax;->o:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v4, v4, Lcom/miui/weather2/view/ax;->p:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->g:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->h:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget v0, p0, Lcom/miui/weather2/view/ay;->a:I

    const v1, 0x7f0f00f9

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "template"

    const-string v2, "button_positive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weather_statistics"

    const-string v2, "vote_click"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_4
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :goto_5
    return-void

    :cond_0
    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->e:Landroid/widget/ImageView;

    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v4, v4, Lcom/miui/weather2/view/ax;->f:Landroid/widget/ImageView;

    const v5, 0x7f0200b9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v1, v1, Lcom/miui/weather2/view/ax;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget v1, v1, Lcom/miui/weather2/view/ax;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v1, v1, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "template"

    const-string v2, "button_negative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weather_statistics"

    const-string v2, "vote_click"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    :cond_5
    const-string v0, "Wth2:WeatherScrollView"

    const-string v1, "onPostExecute() can\'t vote"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Wth2:WeatherScrollView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/miui/weather2/view/ay;->a:I

    const v3, 0x7f0f00f9

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrAgreeUrl()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrDisagreeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/ay;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/ay;->a(Ljava/lang/String;)V

    return-void
.end method
