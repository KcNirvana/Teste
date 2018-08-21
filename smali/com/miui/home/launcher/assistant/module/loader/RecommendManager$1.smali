.class Lcom/miui/home/launcher/assistant/module/loader/RecommendManager$1;
.super Ljava/lang/Object;
.source "RecommendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->initRecommend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager$1;->this$0:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager$1;->this$0:Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;->access$000(Lcom/miui/home/launcher/assistant/module/loader/RecommendManager;)V

    return-void
.end method
