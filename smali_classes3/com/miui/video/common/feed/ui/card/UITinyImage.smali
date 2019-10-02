.class public Lcom/miui/video/common/feed/ui/card/UITinyImage;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyImage.java"


# static fields
.field public static final ACTION_SET_IMAGE_NULL_BG:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_BG"

.field public static final ACTION_SET_IMAGE_NULL_ROUND:Ljava/lang/String; = "ACTION_SET_IMAGE_NULL_ROUND"

.field public static final TAG:Ljava/lang/String; = "RecommendVideoFragment"


# instance fields
.field private eClick:Landroid/view/View$OnClickListener;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRound:I

.field private vBottomLeft:Landroid/widget/TextView;

.field private vBottomRight:Landroid/widget/ImageView;

.field private vBottomRightText:Landroid/widget/TextView;

.field private vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vMask:Landroid/view/View;

.field private vTopLeft:Landroid/widget/TextView;

.field private vTopLeftLogo:Landroid/widget/ImageView;

.field private vTopRight:Landroid/widget/ImageView;

.field private vTopRightLogo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage$1;-><init>(Lcom/miui/video/common/feed/ui/card/UITinyImage;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getvImg()Lcom/miui/video/common/feed/ui/card/UIImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_tiny_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->inflateView(I)V

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_topleft:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeft:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_topright:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_topright_logo:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_topleft_image:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_bottomleft:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomLeft:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_bottomright:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRight:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_bottom_right_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRightText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getRound()I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mRound:I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "RecommendVideoFragment"

    const-string v1, "UITinyImage onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->ImgClear(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    const-string p2, "ACTION_SET_IMAGE_NULL_BG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ACTION_SET_IMAGE_NULL_ROUND"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_0
    instance-of p2, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p2, :cond_d

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getHintTop()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeft:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeft:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getHintTop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeft:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getHintBottom()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getHintBottom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getCornerTop()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getCornerTop()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopLeftLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getCornerBottom()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRight:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getCornerBottom()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRight:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRightText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRightText:Landroid/widget/TextView;

    iget-wide v2, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRightText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const-string p2, "ACTION_SET_IMAGE_NULL_ROUND"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setRound(I)V

    goto :goto_7

    :cond_8
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mRound:I

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setRound(I)V

    :goto_7
    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getLocalImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getLocalImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget p2, Lcom/miui/video/common/feed/R$drawable;->d_1:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_8

    :cond_9
    const-string p2, "ACTION_SET_IMAGE_NULL_BG"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result p2

    if-le p1, p2, :cond_b

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    sget v4, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;IIIZ)V

    goto :goto_8

    :cond_b
    iget-object v6, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    sget v9, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    sget v10, Lcom/miui/video/common/feed/R$drawable;->ic_bg_wide:I

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result v11

    invoke-static/range {v6 .. v11}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;IIIZ)V

    :goto_8
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    sget p2, Lcom/miui/video/common/feed/R$drawable;->bg_card_mask_bottom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    invoke-virtual {p0, p3}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_d
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vMask:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomLeft:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vBottomRightText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopLeftLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/ui/card/UITinyImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    return-void
.end method

.method public setImageBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageRound(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->mRound:I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setRound(I)V

    return-void
.end method

.method public setImageType(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vImg:Lcom/miui/video/common/feed/ui/card/UIImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setType(I)V

    return-void
.end method

.method public setLogoSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UITinyImage;->vTopRightLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
