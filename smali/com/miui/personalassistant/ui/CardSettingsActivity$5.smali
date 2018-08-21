.class Lcom/miui/personalassistant/ui/CardSettingsActivity$5;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;->saveDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$500(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$5;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$500(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "CardSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveDB result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void
.end method
