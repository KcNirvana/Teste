.class Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MakeupParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

.field final synthetic val$isRTL:Z

.field final synthetic val$margin:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    iput-boolean p2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$isRTL:Z

    iput p3, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$isRTL:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;->val$margin:I

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
