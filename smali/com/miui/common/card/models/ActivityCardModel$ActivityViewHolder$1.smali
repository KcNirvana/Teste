.class final Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/ActivityCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;Lcom/miui/common/card/models/ActivityCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;->this$1:Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;->val$m:Lcom/miui/common/card/models/ActivityCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;->val$m:Lcom/miui/common/card/models/ActivityCardModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/ActivityCardModel;->onClick(Landroid/view/View;)V

    return-void
.end method
