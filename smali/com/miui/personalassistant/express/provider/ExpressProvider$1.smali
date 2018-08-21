.class Lcom/miui/personalassistant/express/provider/ExpressProvider$1;
.super Ljava/lang/Object;
.source "ExpressProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/provider/ExpressProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/provider/ExpressProvider;

.field final synthetic val$entryList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/provider/ExpressProvider;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;->this$0:Lcom/miui/personalassistant/express/provider/ExpressProvider;

    iput-object p2, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;->val$entryList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;->this$0:Lcom/miui/personalassistant/express/provider/ExpressProvider;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/provider/ExpressProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/provider/ExpressProvider$1;->val$entryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->requestAllExpressInfo(Ljava/util/List;)V

    return-void
.end method
