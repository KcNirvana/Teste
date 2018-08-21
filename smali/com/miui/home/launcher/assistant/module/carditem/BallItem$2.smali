.class Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;
.super Ljava/lang/Object;
.source "BallItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/request/core/IDataStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->updateScoreData(ILjava/lang/String;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

.field final synthetic val$cardKey:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isTeamSelectChanged:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem;ILjava/lang/String;Landroid/os/Handler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    iput p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;->val$position:I

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;->val$cardKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;->val$handler:Landroid/os/Handler;

    iput-boolean p5, p0, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;->val$isTeamSelectChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheGot(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "BallItem"

    const-string/jumbo v1, "onCacheGot"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDataStatusChanged(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "BallItem"

    const-string/jumbo v1, "onDataStatusChanged"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/BallItem$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method
