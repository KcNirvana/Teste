.class Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;
.super Ljava/lang/Object;
.source "RecommendCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->addView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->val$list:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$1;->val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Ljava/lang/String;)V

    return-void
.end method
