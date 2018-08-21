.class Lcom/flybird/FBScrollView$1;
.super Ljava/lang/Object;
.source "FBScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBScrollView;


# direct methods
.method constructor <init>(Lcom/flybird/FBScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBScrollView$1;->this$0:Lcom/flybird/FBScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flybird/FBScrollView$1;->this$0:Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v2}, Lcom/flybird/FBScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBScrollView$1;->this$0:Lcom/flybird/FBScrollView;

    iput-boolean v1, v0, Lcom/flybird/FBScrollView;->scrollableChildrenFocusable:Z

    iget-object v0, p0, Lcom/flybird/FBScrollView$1;->this$0:Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v1}, Lcom/flybird/FBScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
