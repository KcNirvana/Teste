.class Lcom/miui/weather2/view/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/RefreshableView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/r;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/r;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->t(Lcom/miui/weather2/view/RefreshableView;)Lcom/miui/weather2/view/RefreshableView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/weather2/view/RefreshableView$a;->a()V

    iget-object v0, p0, Lcom/miui/weather2/view/r;->a:Lcom/miui/weather2/view/RefreshableView;

    invoke-static {v0}, Lcom/miui/weather2/view/RefreshableView;->u(Lcom/miui/weather2/view/RefreshableView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
