.class Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;
.super Ljava/lang/Object;
.source "RemodelingParamsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iput p3, v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iget v1, v1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mSelectedParam:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->-wrap1(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    iget-object v0, v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-static {v1, v0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->-wrap0(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method
