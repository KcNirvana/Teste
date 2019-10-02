.class final Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;
.super Ljava/lang/Object;
.source "OnErrorAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$exit:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;->val$exit:Z

    iput-object p2, p0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    sput-object p1, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->sDialog:Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    iget-boolean p1, p0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;->val$exit:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
