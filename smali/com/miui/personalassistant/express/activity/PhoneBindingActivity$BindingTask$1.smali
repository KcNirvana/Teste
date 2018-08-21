.class Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask$1;
.super Ljava/lang/Object;
.source "PhoneBindingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask$1;->this$1:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask$1;->this$1:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;

    iget-object v0, v0, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity$BindingTask;->this$0:Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->requestAllExpressInfo(Ljava/util/List;)V

    return-void
.end method
