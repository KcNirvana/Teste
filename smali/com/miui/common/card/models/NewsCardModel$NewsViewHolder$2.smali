.class final Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/NewsCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;Lcom/miui/common/card/models/NewsCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;->this$1:Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;->val$m:Lcom/miui/common/card/models/NewsCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;->val$m:Lcom/miui/common/card/models/NewsCardModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/NewsCardModel;->onClick(Landroid/view/View;)V

    return-void
.end method
