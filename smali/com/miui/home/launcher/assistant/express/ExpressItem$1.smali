.class Lcom/miui/home/launcher/assistant/express/ExpressItem$1;
.super Ljava/lang/Object;
.source "ExpressItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/express/ExpressItem;->updateExpressData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/express/ExpressItem;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/express/ExpressItem;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItem$1;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/express/ExpressItem$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    const-string/jumbo v2, "content://miui.personalassistant.express/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/express/ExpressItem$1;->this$0:Lcom/miui/home/launcher/assistant/express/ExpressItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/express/ExpressItem;->access$000(Lcom/miui/home/launcher/assistant/express/ExpressItem;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "requestAllExpress"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/express/ExpressItem$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ExpressItem"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
