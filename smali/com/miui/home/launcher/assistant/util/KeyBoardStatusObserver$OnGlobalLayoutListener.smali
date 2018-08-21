.class Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "KeyBoardStatusObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGlobalLayoutListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$000(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    const/16 v2, 0xc8

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$100(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2, v6}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$102(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;Z)Z

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$000(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$100(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2, v5}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$102(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;Z)Z

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->this$0:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->access$000(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0
.end method
