.class Lcom/miui/personalassistant/ui/LaunchActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity$6;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity$6;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$200(Lcom/miui/personalassistant/ui/LaunchActivity;)Lcom/miui/personalassistant/ui/widget/PaListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity$6;->this$0:Lcom/miui/personalassistant/ui/LaunchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->access$200(Lcom/miui/personalassistant/ui/LaunchActivity;)Lcom/miui/personalassistant/ui/widget/PaListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->notifyDataAll()V

    :cond_1
    return-void
.end method
