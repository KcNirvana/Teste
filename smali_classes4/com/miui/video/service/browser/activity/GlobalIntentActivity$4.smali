.class Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;
.super Ljava/lang/Object;
.source "GlobalIntentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    iget-object v1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-virtual {v1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$string;->com_permission_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-virtual {v2}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->com_permission_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/service/R$string;->ok:I

    sget v4, Lcom/miui/video/service/R$string;->cancel:I

    new-instance v5, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;

    invoke-direct {v5, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$1;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;)V

    new-instance v6, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$2;

    invoke-direct {v6, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4$2;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;)V

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/video/service/widget/dialog/CLVDialog;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method
