.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$202(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Z)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;->onScrollEnd(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$202(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Z)Z

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$700(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;->onScrollStart()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1002(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1002(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I

    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p2

    int-to-long p2, p2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)J

    move-result-wide v0

    mul-long p2, p2, v0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p2, v0

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$ScrollChangeListener;->onScrollPosition(J)V

    :cond_2
    return-void
.end method
