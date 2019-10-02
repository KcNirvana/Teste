.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "MomentGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->moment_guide_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->guide_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->background_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottie/zoom_guide.zip"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->button:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/MomentGuideView;->mAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method
