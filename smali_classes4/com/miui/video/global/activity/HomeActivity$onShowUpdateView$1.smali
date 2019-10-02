.class final Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/activity/HomeActivity;->onShowUpdateView(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $targetVersionName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/global/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    iput-object p2, p0, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;->$targetVersionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;->this$0:Lcom/miui/video/global/activity/HomeActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    const-string p1, "off"

    const-string v0, "home_page"

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;->$targetVersionName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/miui/video/service/update/UpgradeStatisticUtils;->clickUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/service/update/AppUpdateUtils;->cancelUpdate()V

    return-void
.end method
