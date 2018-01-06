.class Landroid/support/v4/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Landroid/support/v4/app/f$b;

.field final synthetic e:Z

.field final synthetic f:Landroid/support/v4/app/n;

.field final synthetic g:Landroid/support/v4/app/n;

.field final synthetic h:Landroid/support/v4/app/f;


# direct methods
.method constructor <init>(Landroid/support/v4/app/f;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/f$b;ZLandroid/support/v4/app/n;Landroid/support/v4/app/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/h;->h:Landroid/support/v4/app/f;

    iput-object p2, p0, Landroid/support/v4/app/h;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/h;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/h;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/f$b;

    iput-boolean p6, p0, Landroid/support/v4/app/h;->e:Z

    iput-object p7, p0, Landroid/support/v4/app/h;->f:Landroid/support/v4/app/n;

    iput-object p8, p0, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/h;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/h;->h:Landroid/support/v4/app/f;

    iget-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/f$b;

    iget-boolean v2, p0, Landroid/support/v4/app/h;->e:Z

    iget-object v3, p0, Landroid/support/v4/app/h;->f:Landroid/support/v4/app/n;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/f;Landroid/support/v4/app/f$b;ZLandroid/support/v4/app/n;)Landroid/support/v4/d/a;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v4/app/h;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/f$b;

    iget-object v1, v1, Landroid/support/v4/app/f$b;->d:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/h;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v2}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->h:Landroid/support/v4/app/f;

    iget-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/f$b;

    invoke-static {v0, v5, v1}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/f;Landroid/support/v4/d/a;Landroid/support/v4/app/f$b;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->h:Landroid/support/v4/app/f;

    iget-object v1, p0, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/f$b;

    iget-object v2, p0, Landroid/support/v4/app/h;->f:Landroid/support/v4/app/n;

    iget-object v3, p0, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/n;

    iget-boolean v4, p0, Landroid/support/v4/app/h;->e:Z

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/f;->a(Landroid/support/v4/app/f;Landroid/support/v4/app/f$b;Landroid/support/v4/app/n;Landroid/support/v4/app/n;ZLandroid/support/v4/d/a;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
