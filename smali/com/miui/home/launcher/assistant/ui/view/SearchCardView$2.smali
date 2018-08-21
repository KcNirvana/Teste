.class Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;
.super Ljava/lang/Object;
.source "SearchCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "minus_one_screen"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "searchManager.startSearch"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v6}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
