.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$64(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    const/16 v0, 0x4d3

    invoke-static {p1, v0}, Lcom/miui/video/base/utils/PermissionUtils;->startSettingDetailForResult(Landroid/app/Activity;I)V

    return-void
.end method

.method public static synthetic lambda$run$65(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->finish()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    sget v2, Lcom/miui/video/base/R$string;->com_permission_title:I

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    sget v3, Lcom/miui/video/base/R$string;->com_permission_desc:I

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/base/R$string;->ok:I

    sget v4, Lcom/miui/video/base/R$string;->cancel:I

    new-instance v5, Lcom/miui/video/biz/videoplus/app/-$$Lambda$VideoPlusMainActivity$7$IirfutGCzesvHhvAjf-76kc0xjA;

    invoke-direct {v5, p0}, Lcom/miui/video/biz/videoplus/app/-$$Lambda$VideoPlusMainActivity$7$IirfutGCzesvHhvAjf-76kc0xjA;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;)V

    new-instance v6, Lcom/miui/video/biz/videoplus/app/-$$Lambda$VideoPlusMainActivity$7$poVOyxMT1HEDrMWnaI-2ai285oc;

    invoke-direct {v6, p0}, Lcom/miui/video/biz/videoplus/app/-$$Lambda$VideoPlusMainActivity$7$poVOyxMT1HEDrMWnaI-2ai285oc;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;)V

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/video/common/library/widget/VideoCommonDialog;->showOkCancelDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method
