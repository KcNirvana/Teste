.class final Landroid/support/v4/app/ag;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/app/ad$a;

.field private b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ad$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ad$a;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ad$a;

    iget-object v0, v0, Landroid/support/v4/app/ad$a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ad$a;

    iget-object v0, v0, Landroid/support/v4/app/ad$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ad;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ag;->b:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Landroid/graphics/Rect;

    return-object v0
.end method
