.class public Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "AuthorDetailsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;
    }
.end annotation


# instance fields
.field private btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

.field private final listener:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;

.field private vAvatar:Landroid/widget/ImageView;

.field private vContent:Landroid/widget/ImageView;

.field private vDesc:Landroid/widget/TextView;

.field private vName:Landroid/widget/TextView;

.field private vSubscribeNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->item_details_author:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p4, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->listener:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;

    return-void
.end method

.method public static synthetic lambda$null$26(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Landroid/support/v7/graphics/Palette;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->listener:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->listener:Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView$OnThemeColorChangeListener;->onChange(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setData$25(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Lcom/miui/video/framework/base/ui/BaseUIEntity;Z)V
    .locals 0

    sget p2, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setData$27(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_author_detail_bg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$m5A-KhTy7uuZG3ZQmWWGlIpfMQQ;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$m5A-KhTy7uuZG3ZQmWWGlIpfMQQ;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initFindViews()V

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->iv_content:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vContent:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vName:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribes_number:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vSubscribeNumber:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_desc:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vDesc:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->btn_subscribe:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/SubscribeButton;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 10

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/video/biz/group/pgc/R$string;->gallery_tab_all:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v1, v4, v2, v3}, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil;->getLastIndexForLimit(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vName:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x800005

    goto :goto_0

    :cond_0
    const v2, 0x800003

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_user_default:I

    invoke-static {v1, v2, v5}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide v1

    iget-object v5, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/video/biz/group/pgc/R$plurals;->subscriber:I

    const-wide/16 v7, 0x1

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/MiStringUtils;->num2thousand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vSubscribeNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->vContent:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_author_detail_bg:I

    sget v8, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_author_detail_bg:I

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;IIIZ)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribe_status()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setSubscribe(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->updateSubscribe(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    new-instance v1, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$0Yyx3nExNuNGKbZzWoUFbIhousI;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setListener(Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;)V

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$gmHYBRIcHG-nUI_t2Hb4UiyIMps;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorDetailsView$gmHYBRIcHG-nUI_t2Hb4UiyIMps;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorDetailsView;)V

    invoke-static {p2, p1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->getBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;)V

    :cond_3
    return-void
.end method
