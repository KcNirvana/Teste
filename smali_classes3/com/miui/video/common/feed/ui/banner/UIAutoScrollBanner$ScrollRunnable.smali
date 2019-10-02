.class public Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;
.super Ljava/lang/Object;
.source "UIAutoScrollBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollRunnable"
.end annotation


# instance fields
.field mWefBanner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;->mWefBanner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner$ScrollRunnable;->mWefBanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$000(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$100(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$200(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$200(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$200(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Lcom/miui/video/common/feed/ui/UIBannerViewPager;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->setCurrentItem(I)V

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->access$000(Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/banner/UIAutoScrollBanner;->stopAutoScroll()V

    :cond_2
    :goto_0
    return-void
.end method
