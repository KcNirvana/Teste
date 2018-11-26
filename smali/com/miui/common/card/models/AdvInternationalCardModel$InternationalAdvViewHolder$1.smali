.class final Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;

.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;->this$1:Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->onClick(Landroid/view/View;)V

    return-void
.end method
