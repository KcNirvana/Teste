.class Lcom/miui/video/common/feed/UIRecyclerListView$3;
.super Ljava/lang/Object;
.source "UIRecyclerListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/UIRecyclerListView;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/UIRecyclerListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFooterView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    new-instance v1, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    invoke-static {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$202(Lcom/miui/video/common/feed/UIRecyclerListView;Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$300(Lcom/miui/video/common/feed/UIRecyclerListView;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$600(Lcom/miui/video/common/feed/UIRecyclerListView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showTitle(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$500(Lcom/miui/video/common/feed/UIRecyclerListView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showImage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p2}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$400(Lcom/miui/video/common/feed/UIRecyclerListView;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showRetry(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;->showProgress()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerListView$3;->this$0:Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->access$200(Lcom/miui/video/common/feed/UIRecyclerListView;)Lcom/miui/video/common/feed/ui/UIRecyclerLoadingBar;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
