.class Lcom/facebook/ads/internal/view/f/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/view/c/a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/ads/internal/s/c;

.field final c:Lcom/facebook/ads/internal/adapters/b/o;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f/b$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/f/b$b;->b:Lcom/facebook/ads/internal/s/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/f/b$b;->c:Lcom/facebook/ads/internal/adapters/b/o;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/o;Lcom/facebook/ads/internal/view/f/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/f/b$b;-><init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/adapters/b/o;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string p2, "touch"

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getTouchDataRecorder()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/f/b$b;->b:Lcom/facebook/ads/internal/s/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$b;->c:Lcom/facebook/ads/internal/adapters/b/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/o;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/facebook/ads/internal/s/c;->d(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
