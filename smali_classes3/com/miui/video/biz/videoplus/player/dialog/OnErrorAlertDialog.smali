.class public Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;
.super Ljava/lang/Object;
.source "OnErrorAlertDialog.java"


# static fields
.field public static final NOT_SUPPORT_ERROR:I = 0x65

.field public static final NOT_SUPPORT_VIDEO_ERROR:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;I)Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;->getErrorMsg(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;

    invoke-direct {p2, p0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->create()Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setMessage(Ljava/lang/String;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->vp_VideoView_error_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setTitle(Ljava/lang/String;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->vp_VideoView_error_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog$1;-><init>(Landroid/app/Activity;Z)V

    const/4 p0, -0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p2
.end method

.method public static getErrorMsg(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    sget p1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_video_not_support:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget p1, Lcom/miui/video/biz/videoplus/R$string;->plus_player_8k_video_not_support:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
