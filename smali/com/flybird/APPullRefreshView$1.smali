.class Lcom/flybird/APPullRefreshView$1;
.super Ljava/lang/Object;
.source "APPullRefreshView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/APPullRefreshView;


# direct methods
.method constructor <init>(Lcom/flybird/APPullRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/APPullRefreshView$1;->this$0:Lcom/flybird/APPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/APPullRefreshView$1;->this$0:Lcom/flybird/APPullRefreshView;

    iget-object v1, p0, Lcom/flybird/APPullRefreshView$1;->this$0:Lcom/flybird/APPullRefreshView;

    iget-object v1, v1, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/FBOverView;->getOverViewHeight()I

    move-result v1

    iput v1, v0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    iget-object v0, p0, Lcom/flybird/APPullRefreshView$1;->this$0:Lcom/flybird/APPullRefreshView;

    invoke-virtual {v0}, Lcom/flybird/APPullRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
