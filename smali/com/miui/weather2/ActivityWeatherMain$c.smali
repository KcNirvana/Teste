.class Lcom/miui/weather2/ActivityWeatherMain$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/ag$g;
.implements Lcom/miui/weather2/model/m$f;
.implements Lcom/miui/weather2/model/m$h;
.implements Lcom/miui/weather2/model/o$b;
.implements Lcom/miui/weather2/tools/w$a;
.implements Lcom/miui/weather2/view/RefreshableView$a;
.implements Lcom/miui/weather2/view/WeatherScreenView$a;
.implements Lcom/miui/weather2/view/WeatherScrollView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityWeatherMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$c;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/RefreshableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->y(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    const v2, 0x7f0f004a

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/RefreshableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->y(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/aw;

    invoke-direct {v1, p0}, Lcom/miui/weather2/aw;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->y(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/miui/weather2/ax;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ax;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(FF)F
    .locals 8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, v3, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v5}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    int-to-float v7, v5

    add-float/2addr v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v5

    add-float/2addr v7, p1

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v6, v5

    div-float/2addr v0, v6

    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    :goto_1
    iget-object v1, v3, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setScaleX(F)V

    iget-object v1, v3, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setPivotY(F)V

    iget-object v1, v3, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setScaleY(F)V

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, p1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/CityData;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_3

    const-string v0, "location_event_gaode"

    const-string v1, "location_status_fail"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/ActivityWeatherMain$c;->b()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    sget v1, Lcom/miui/weather2/bf;->h:I

    invoke-static {v0, v2, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;II)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090004

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->x(Lcom/miui/weather2/ActivityWeatherMain;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/weather2/av;

    invoke-direct {v2, p0}, Lcom/miui/weather2/av;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/RefreshableView;->a(ILandroid/animation/AnimatorListenerAdapter;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string v0, "location_event_gaode"

    const-string v1, "location_status_success"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "location_event_gaode"

    const-string v1, "location_status_user_not_allowed"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/miui/weather2/g/a$j;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->A(Lcom/miui/weather2/ActivityWeatherMain;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/weather2/g/a$d;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->B(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/model/ag;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/ActivityWeatherMain$f;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {v2, v3, v4}, Lcom/miui/weather2/ActivityWeatherMain$f;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Lcom/miui/weather2/model/ag$d;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->B(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/model/ag;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/ActivityWeatherMain$f;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {v2, v3, v4}, Lcom/miui/weather2/ActivityWeatherMain$f;-><init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Lcom/miui/weather2/model/ag$d;Z)V

    goto :goto_0
.end method

.method public a(Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/view/WeatherScrollView;)V
    .locals 1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/AdvertismentData;)Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {p4, p2, p3, p1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;Lcom/miui/weather2/structures/AdvertismentData;)V

    invoke-virtual {p4}, Lcom/miui/weather2/view/WeatherScrollView;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/miui/weather2/view/WeatherScrollView;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/view/WeatherScrollView;IIII)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->J(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;I)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    sub-int v0, p3, p5

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;FZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->C(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    if-ne p2, v7, :cond_5

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->removeAllScreens()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->E(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/WeatherScreenView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;I)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->e(Lcom/miui/weather2/ActivityWeatherMain;I)I

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/view/WeatherScreenView;->setCurrentScreen(I)V

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v4

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v1}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/miui/weather2/bf;->f:I

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;II)V

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(IDI)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->z(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/ActivityWeatherMain$c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/weather2/ActivityWeatherMain$c;->b(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->k(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/CircleIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;Ljava/util/ArrayList;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/CircleIndicator;->a(IZ)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->k(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/CircleIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/CircleIndicator;->a(II)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->z(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/ActivityWeatherMain$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->setScrollViewListener(Lcom/miui/weather2/view/WeatherScrollView$c;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;I)V

    :cond_3
    return-void

    :cond_4
    sget v1, Lcom/miui/weather2/bf;->g:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v2, v2, Lcom/miui/weather2/ActivityWeatherMain;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/util/ArrayList;IZI)V

    goto :goto_1

    :cond_6
    const-string v0, "normal_open"

    const-string v3, "addition_city_count"

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v0, v1

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_8

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/miui/weather2/view/WeatherScreenView;->removeScreen(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v3

    if-le v0, v3, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v3

    sub-int v6, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/view/WeatherScrollView;IIII)V

    move v0, v2

    :goto_3
    if-ge v0, v6, :cond_8

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->E(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/view/WeatherScreenView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->h()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v4, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->F(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/weather2/ActivityWeatherMain;->e(Lcom/miui/weather2/ActivityWeatherMain;I)I

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/miui/weather2/ActivityWeatherMain;->e(Lcom/miui/weather2/ActivityWeatherMain;I)I

    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->setCurrentScreen(I)V

    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->f(Lcom/miui/weather2/ActivityWeatherMain;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_d

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v8, :cond_b

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->h()V

    :cond_b
    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v7, :cond_c

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/WeatherScrollView;->a(I)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->G(Lcom/miui/weather2/ActivityWeatherMain;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/WeatherData;)V

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/weather2/bb;

    invoke-direct {v2, p0, p1}, Lcom/miui/weather2/bb;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/RefreshableView;->a(ILandroid/animation/AnimatorListenerAdapter;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->F(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bj;->a(Landroid/content/Context;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getScreenCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f012d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->k()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->a()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/RefreshableView;->a(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->H(Lcom/miui/weather2/ActivityWeatherMain;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v1, 0x7f0900a7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/weather2/ay;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ay;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/RefreshableView;->a(ILandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1
.end method

.method public c(I)V
    .locals 8

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v6, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v7, v0, v1

    const/4 v1, 0x1

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v7, v3

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    int-to-long v0, p1

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/miui/weather2/az;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/az;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;ILcom/miui/weather2/view/WeatherScrollView;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v5, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    int-to-long v0, p1

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/miui/weather2/ba;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/ba;-><init>(Lcom/miui/weather2/ActivityWeatherMain$c;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;Lcom/miui/weather2/view/WeatherScrollView;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public e(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->h()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->e(Lcom/miui/weather2/ActivityWeatherMain;I)I

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->f(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->k(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/CircleIndicator;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->D(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/view/WeatherScreenView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/weather2/view/CircleIndicator;->a(II)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->g(Lcom/miui/weather2/ActivityWeatherMain;I)V

    const-string v0, "normal_scroll"

    const-string v2, "switch_city"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x89

    const-string v2, "weather_info_style_abtest_newnew_switch_city"

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "weather_statistics"

    const-string v2, "check_city_count"

    add-int/lit8 v3, p1, 0x1

    int-to-long v4, v3

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v0, 0xa0

    const-string v2, "weather_BottomBar_city_switch"

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
