.class Lcom/mixpanel/android/mpmetrics/InAppFragment$2;
.super Ljava/lang/Object;
.source "InAppFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/InAppFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$100(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$100(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mixpanel/android/mpmetrics/InAppFragment$2$1;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment$2$1;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$100(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$300(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->access$100(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v12, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v6, v2

    move v11, v12

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v1, Lcom/mixpanel/android/mpmetrics/InAppFragment$SineBounceInterpolator;

    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment$2;->this$0:Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {v1, v5}, Lcom/mixpanel/android/mpmetrics/InAppFragment$SineBounceInterpolator;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v5, 0x190

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
