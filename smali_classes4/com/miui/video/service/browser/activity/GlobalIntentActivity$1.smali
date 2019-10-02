.class Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;
.super Ljava/lang/Object;
.source "GlobalIntentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p1

    const-string v0, "privacy_switch_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-static {p1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->access$000(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    const-string v0, "ACTION_STEP2_GRANT_PERMISSION"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
