.class public Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;
.super Lcom/miui/weather2/view/onOnePage/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;
    }
.end annotation


# instance fields
.field private f:Lcom/miui/weather2/view/gifImage/GifImageView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)Lcom/miui/weather2/view/gifImage/GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-nez v0, :cond_1

    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() mAdvertisementData is null"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v0, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v0, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v0, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDeepLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v1, v1, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DeepLinkInfo;->getDownloadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment$LandingPageListener;-><init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    iget-object v1, v1, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/DeepLinkInfo;->getDownloadInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startApp(Ljava/lang/String;Z)V

    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() jump to app"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() downloadInfo is empty"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.android.browser"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() jump to h5"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() landingPageService is null"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Wth2:ImageAdvertisment"

    const-string v1, "jumpUrl() can\'t start intent"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/GifImageView;->b()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-virtual {v1}, Lcom/miui/weather2/view/gifImage/GifImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public d()V
    .locals 4

    const-string v0, "APP_START_DOWNLOAD"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public f()V
    .locals 4

    const-string v0, "APP_DOWNLOAD_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "APP_INSTALL_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/view/onOnePage/a;->onFinishInflate()V

    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/gifImage/GifImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/q;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/q;-><init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/view/onOnePage/a;->setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/weather2/structures/AdvertismentData;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-virtual {v1, v3}, Lcom/miui/weather2/view/gifImage/GifImageView;->setVisibility(I)V

    const-string v1, "3.11"

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->i()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->h()Lcom/bumptech/glide/e;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/view/onOnePage/r;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/r;-><init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    goto :goto_0

    :cond_5
    const-string v1, "3.4"

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->g:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->f:Lcom/miui/weather2/view/gifImage/GifImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    goto :goto_0
.end method
