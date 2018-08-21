.class final Lcom/miui/personalassistant/util/Util$1;
.super Lmiui/util/async/Task;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/Util;->asyncLoadAllApps(Landroid/content/Context;Lcom/miui/personalassistant/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/personalassistant/util/Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/Util$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/util/Util$1;->val$callback:Lcom/miui/personalassistant/util/Callback;

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/Util$1;->doLoad()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doLoad()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/util/Util$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x3e7

    invoke-virtual {v1, v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public bridge synthetic onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/util/Util$1;->onResult(Lmiui/util/async/TaskManager;Ljava/util/List;)V

    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiui/util/async/Task;->onResult(Lmiui/util/async/TaskManager;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/personalassistant/util/Util$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v3, "com.android.thememanager"

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/util/Util$1;->val$callback:Lcom/miui/personalassistant/util/Callback;

    invoke-interface {v2, p2}, Lcom/miui/personalassistant/util/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
