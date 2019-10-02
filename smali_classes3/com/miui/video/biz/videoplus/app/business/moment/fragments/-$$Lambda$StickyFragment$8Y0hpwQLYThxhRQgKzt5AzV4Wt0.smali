.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

.field private final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;->f$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;->f$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/-$$Lambda$StickyFragment$8Y0hpwQLYThxhRQgKzt5AzV4Wt0;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->lambda$runAnim$60(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
