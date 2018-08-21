.class Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;
.super Ljava/lang/Object;
.source "StockCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/StockCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/StockCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/StockCardView$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
