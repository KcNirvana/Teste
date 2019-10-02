.class Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;
.super Ljava/lang/Object;
.source "EditState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditBinding"
.end annotation


# instance fields
.field private mAlive:Z

.field private volatile mDying:Z

.field private final mEdit:Lcom/mixpanel/android/viewcrawler/ViewVisitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/mixpanel/android/viewcrawler/ViewVisitor;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mEdit:Lcom/mixpanel/android/viewcrawler/ViewVisitor;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mAlive:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mDying:Z

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->run()V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    iget-boolean v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mAlive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mEdit:Lcom/mixpanel/android/viewcrawler/ViewVisitor;

    invoke-virtual {v0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;->cleanup()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mAlive:Z

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mDying:Z

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->run()V

    return-void
.end method

.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mDying:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mEdit:Lcom/mixpanel/android/viewcrawler/ViewVisitor;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/viewcrawler/ViewVisitor;->visit(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->cleanUp()V

    return-void
.end method
