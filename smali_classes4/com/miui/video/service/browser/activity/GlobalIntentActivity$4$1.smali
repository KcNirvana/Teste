.class Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;
.super Ljava/lang/Object;
.source "GlobalIntentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;->this$1:Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;->this$1:Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;

    iget-object p1, p1, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-static {p1}, Lcom/miui/video/service/widget/dialog/CLVDialog;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;->this$1:Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;

    iget-object p1, p1, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    const/16 v0, 0x4d3

    invoke-static {p1, v0}, Lcom/miui/video/base/utils/PermissionUtils;->startSettingDetailForResult(Landroid/app/Activity;I)V

    return-void
.end method
