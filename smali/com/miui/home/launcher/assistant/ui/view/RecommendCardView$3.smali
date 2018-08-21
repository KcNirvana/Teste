.class Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;
.super Ljava/lang/Object;
.source "RecommendCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->removeRecomApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

.field final synthetic val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Lcom/miui/home/launcher/assistant/module/model/Recommend;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;->val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$3;->val$re:Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->removeApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V

    return-void
.end method
