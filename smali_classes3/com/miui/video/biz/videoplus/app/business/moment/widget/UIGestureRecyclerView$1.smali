.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;
.super Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;
.source "UIGestureRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getUIFactory()Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->getStyle()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V

    return-object p2

    :pswitch_1
    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->getStyle()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->getStyle()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentRowData;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
