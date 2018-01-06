.class final Landroid/support/v4/e/am;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/e/an;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/e/an;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/am;->a:Landroid/support/v4/e/an;

    iput-object p2, p0, Landroid/support/v4/e/am;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/am;->a:Landroid/support/v4/e/an;

    iget-object v1, p0, Landroid/support/v4/e/am;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/e/an;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/am;->a:Landroid/support/v4/e/an;

    iget-object v1, p0, Landroid/support/v4/e/am;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/e/an;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e/am;->a:Landroid/support/v4/e/an;

    iget-object v1, p0, Landroid/support/v4/e/am;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/e/an;->a(Landroid/view/View;)V

    return-void
.end method
