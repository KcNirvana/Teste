.class Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;
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

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-static {p1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->access$100(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->finish()V

    return-void
.end method
