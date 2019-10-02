.class public Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;
.super Ljava/lang/Object;
.source "OnErrorAlertDialog.java"


# static fields
.field public static sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;I)Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->getErrorMsg(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;

    invoke-direct {p2, p0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/miui/video/base/widget/ui/MiVAlertDialog$Builder;->create()Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p2

    sput-object p2, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    :cond_0
    sget-object p2, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    invoke-virtual {p2, p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setMessage(Ljava/lang/String;)V

    sget-object p1, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    sget p2, Lcom/miui/video/base/R$string;->vp_VideoView_error_title:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setTitle(Ljava/lang/String;)V

    sget-object p1, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    const/4 p2, -0x1

    sget v0, Lcom/miui/video/base/R$string;->vp_VideoView_error_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;

    invoke-direct {v1, p3, p0}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->setButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object p0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    return-object p0
.end method

.method public static destroyDialog()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    invoke-virtual {v0}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getErrorMsg(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 1

    sget p1, Lcom/miui/video/base/R$string;->vp_VideoView_error_text_unknown:I

    const/16 v0, -0x3f2

    if-ne p2, v0, :cond_0

    sget p1, Lcom/miui/video/base/R$string;->vp_hardware_unsported:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
