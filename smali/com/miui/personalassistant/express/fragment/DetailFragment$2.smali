.class Lcom/miui/personalassistant/express/fragment/DetailFragment$2;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;->deleteHistory(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

.field final synthetic val$entry:Lcom/miui/personalassistant/express/bean/ExpressEntry;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;->val$entry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/express/Constants$Cache;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "cache_key LIKE ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$2;->val$entry:Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v6}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
