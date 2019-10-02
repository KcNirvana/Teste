.class Lcom/miui/video/service/browser/activity/GlobalIntentActivity$3;
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

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$3;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$3;->this$0:Lcom/miui/video/service/browser/activity/GlobalIntentActivity;

    const-string v1, "ACTION_STEP3_PARSE_ACTION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
