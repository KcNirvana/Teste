.class final Lcom/miui/appmanager/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkh(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AMScrollView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/appmanager/widget/AMScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjK(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailTitleView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/miui/appmanager/widget/AppDetailTitleView;->measure(II)V

    iget-object v1, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjK(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailTitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/appmanager/widget/AppDetailTitleView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkh(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AMScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/appmanager/widget/AMScrollView;->getHeight()I

    move-result v2

    sub-int v1, v0, v1

    if-ge v1, v2, :cond_1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/appmanager/R;->aWv:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
