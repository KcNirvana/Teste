.class public Lcom/miui/video/biz/ugc/card/UIUGCVideo;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIUGCVideo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UIUGCVideo"


# instance fields
.field private mCPLink:Ljava/lang/String;

.field private mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

.field private mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

.field private statusListenerWrapper:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

.field private vCover:Landroid/widget/ImageView;

.field private vDeeplinkImg:Landroid/widget/ImageView;

.field private vDeeplinkTextText:Landroid/widget/TextView;

.field private vLike:Lcom/airbnb/lottie/LottieAnimationView;

.field private vLikeCount:Landroid/widget/TextView;

.field private vPlayerContainer:Landroid/widget/FrameLayout;

.field private vShare:Landroid/widget/ImageView;

.field private vTopRightLogo:Landroid/widget/ImageView;

.field private vUserAvatar:Landroid/widget/ImageView;

.field private vUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo$1;-><init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->statusListenerWrapper:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->initFindViews()V

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->initViewsEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLikeCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mCPLink:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public attachPlayer(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vPlayerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->statusListenerWrapper:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->setOnStatusChangeListener(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V

    return-void
.end method

.method public detachPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->duration:J

    return-void
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/ugc/R$layout;->ui_card_ugc_video:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_top_right_logo:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vTopRightLogo:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vUserAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_shareimg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vShare:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_likeimg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "animate_like.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_user_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vUserName:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_likecount:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLikeCount:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_deeplink_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_deeplink_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkTextText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_player_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vPlayerContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/biz/ugc/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vCover:Landroid/widget/ImageView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;-><init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vShare:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo$3;-><init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo$4;-><init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkTextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "UIUGCVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged  changedView ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  visibility == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setCPLink(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UIUGCVideo"

    const-string v1, "setCPLink"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mCPLink:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/miui/video/biz/ugc/R$drawable;->bg_ugc:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/miui/video/biz/ugc/R$drawable;->bg_ugc:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget v0, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_width:I

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_height:I

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vUserAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->uploader_poster:Ljava/lang/String;

    sget v1, Lcom/miui/video/biz/ugc/R$drawable;->ic_ugc_def_avatar:I

    sget v2, Lcom/miui/video/biz/ugc/R$drawable;->ic_ugc_def_avatar:I

    sget v3, Lcom/miui/video/biz/ugc/R$drawable;->ic_tinyvideo_like:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;III)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vUserName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v0, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->uploader_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLikeCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget v0, v0, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-boolean p1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->isLike:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vLike:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mUGCEntity:Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object p1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->appIcon:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkTextText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/ugc/R$string;->share_ugc_join:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkTextText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/ugc/R$string;->share_ugc_join:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->vDeeplinkImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/ugc/R$drawable;->ic_vmate:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V
    .locals 2

    const-string v0, "UIUGCVideo"

    const-string v1, "setOnStatusChangeListener"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->mOnStatusChangeListener:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    return-void
.end method
